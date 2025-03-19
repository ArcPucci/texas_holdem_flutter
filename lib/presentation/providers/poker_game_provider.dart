import 'dart:math';

import 'package:flutter/material.dart';
import 'package:texas_holdem/data/models/models.dart';
import 'package:texas_holdem/data/sources/poker_checker.dart';
import 'package:texas_holdem/data/sources/sources.dart';

class PokerGameProvider extends ChangeNotifier {
  PokerGameProvider({
    required List<Player?> players,
  }) : _players = players;

  final List<GameCard> _deck = [];
  final List<Player?> _players;

  bool get _playersTurn => !(_players[_playerIndex]?.isBot ?? true);

  bool get _playerCanMove => _playersTurn && !_gameOver;

  int _pot = 0;
  int _playerIndex = 0;

  bool _gameOver = false;

  static const int _step = 20;

  int _raise = _step;
  int _previousBet = 0;

  int get pot => _pot;

  int get playerIndex => _playerIndex;

  int get raise => _raise + _previousBet;

  List<Player?> get players => _players;

  List<GameCard> get deck => _deck;

  int get call => _previousBet;

  Player get player =>
      _players.firstWhere((e) => !(e?.isBot ?? true)) ??
      _players.firstWhere((e) => e != null)!;

  void initializePoker() {
    _pot = 0;
    _raise = _step;
    _playerIndex = 0;
    _previousBet = 0;
    _gameOver = false;
    _generateDeck();

    notifyListeners();

    _move();
  }

  void _generateDeck() {
    final cards = List<GameCard>.from(Poker.fiftyTwoPlayingCards);
    cards.shuffle();

    _deck.clear();
    _deck.addAll(cards.take(5));

    cards.removeRange(0, 5);

    for (var player in _players) {
      if (player == null) continue;
      player.bet = 0;
      player.hand.clear();
      player.hand.addAll(cards.take(2));
      cards.removeRange(0, 2);
      print(cards.length);
    }
  }

  void _move() async {
    while (_players[_playerIndex] == null) {
      _playerIndex++;
      print('-----------------');
      if (_playerIndex >= _players.length - 1) {
        _playerIndex = 0;
      }
    }

    while (_players[_playerIndex]!.isBot) {
      print("MOVE BOT ${_players[_playerIndex]?.name}");
      await Future.delayed(const Duration(seconds: 2));

      final rand = Random().nextBool();

      print(
          "${_players[_playerIndex]!.name} can raise: ${_players[_playerIndex]!.canRaise}");
      if (_players[_playerIndex]!.canRaise) {
        rand ? await _doCallForBot() : await _doRaiseForBot();
      } else {
        await _doCallForBot();
      }

      await Future.delayed(const Duration(seconds: 1));
      _players[_playerIndex]?.didAction = true;

      final allCall = await _checkAllCall();
      notifyListeners();

      print("Next round: $allCall");
      if (allCall) {
        final allCardsOpened = _deck.every((e) => e.opened);
        final allCall = _players.every((e) => (e?.didAction ?? true));
        final gameOver = allCardsOpened && allCall;
        if (gameOver) {
          print("GAME OVER");
          _gameOver = true;
          await _checkWinner();
          return;
        }

        continue;
      }

      await _nextPlayer();
      print(_playerIndex);
    }
  }

  Future<void> _checkWinner() async {
    final List<Map<String, dynamic>> combs = [];

    for (var player in _players) {
      if (player == null) continue;
      if (!player.active) continue;
      final bestComb = PokerChecker.findBestCombination(
        [...player.hand, ..._deck],
      );
      combs.add({"player": player, "hand": bestComb});
    }

    combs.sort(
      (a, b) => (b['hand'] as PokerHand).compareTo(a['hand'] as PokerHand),
    );

    for (var item in combs) {
      final player = item['player'] as Player;
      final hand = item['hand'] as PokerHand;

      print("${player.name} hand: ${hand.highCards}");
      for (var card in player.hand) {
        print(card.image);
      }
    }

    print((combs.first['player'] as Player).name);
  }

  Future<bool> _checkAllCall() async {
    final allCall = _players.every((e) => (e?.didAction ?? true));
    final allBet = _players.every((e) => e?.bet == _previousBet);
    final allCardsClosed = _deck.every((e) => !e.opened);
    bool _cardOpened = false;

    if (allCall && allBet) {
      if (allCardsClosed) {
        for (int i = 0; i < 3; i++) {
          _deck[i].open();
          _cardOpened = true;
        }

        for (var player in _players) {
          if (player == null) continue;
          for (var card in player.hand) {
            card.open();
          }
        }
      } else {
        for (var card in _deck) {
          if (card.opened) continue;
          card.open();
          _cardOpened = true;
          break;
        }
      }

      for (var player in _players) {
        if (player == null) continue;
        _pot += player.bet;
        player.bet = 0;
        player.canRaise = true;
        player.didAction = !_cardOpened;
      }

      _playerIndex = 0;
      _previousBet = 0;
      _raise = _step;
    }

    return allCall && allBet;
  }

  Future<void> _reset() async {
    for (var player in _players) {
      if (player == null) continue;
      player.bet = 0;
      player.canRaise = true;
      player.didAction = false;
      player.active = true;
    }

    initializePoker();
  }

  Future<void> _nextPlayer() async {
    if (_playerIndex >= _players.length - 1) {
      _playerIndex = 0;
    } else {
      _playerIndex++;
    }

    while (_players[_playerIndex] == null || !_players[_playerIndex]!.active) {
      if (_playerIndex >= _players.length - 1) {
        _playerIndex = 0;
      } else {
        _playerIndex++;
      }
    }
  }

  void multiplyBet(int factor) {
    if (!_playerCanMove) return;
    if (!_players[_playerIndex]!.canRaise) return;

    _raise *= factor;
    notifyListeners();
  }

  void doAllIn() {
    if (!_playerCanMove) return;
    if (!_players[_playerIndex]!.canRaise) return;
  }

  void increaseRaise() {
    if (!_playerCanMove) return;
    if (!_players[_playerIndex]!.canRaise) return;
    // if(_raise >= _pot) return;
    _raise += _step;
    notifyListeners();
  }

  void decreaseRaise() {
    if (!_playerCanMove) return;
    if (!_players[_playerIndex]!.canRaise) return;
    if (_raise <= _step) return;

    _raise -= _step;
    notifyListeners();
  }

  void foldCards() {
    if (!_playerCanMove) return;
    _players[_playerIndex]?.active = false;
    notifyListeners();

    _reset();
  }

  void doCall() async {
    if (!_playerCanMove) return;

    final diff = _previousBet - _players[_playerIndex]!.bet;

    _players[_playerIndex]!.bet += diff;
    _players[_playerIndex]?.canRaise = false;
    _players[_playerIndex]?.didAction = true;

    notifyListeners();

    await _nextPlayer();
    _move();
  }

  void doRaise() async {
    if (!_playerCanMove) return;
    if (!_players[_playerIndex]!.canRaise) return;

    _players[_playerIndex]?.bet = _raise + _previousBet;
    _previousBet = _players[_playerIndex]!.bet;
    _players[_playerIndex]?.canRaise = false;
    _players[_playerIndex]?.didAction = true;

    notifyListeners();

    await _nextPlayer();
    _move();
  }

  Future<void> _doCallForBot() async {
    final diff = _previousBet - _players[_playerIndex]!.bet;

    _players[_playerIndex]!.bet += diff;
    _players[_playerIndex]?.canRaise = false;
    notifyListeners();

    print("BOT CALL ${_players[_playerIndex]?.name}");
  }

  Future<void> _doRaiseForBot() async {
    final rand = Random().nextInt(5);
    final raise = _step * rand;

    _players[_playerIndex]!.bet = raise + _previousBet;
    _previousBet = _players[_playerIndex]!.bet;
    _players[_playerIndex]?.canRaise = false;

    print("BOT RAISE ${_players[_playerIndex]?.name}");

    notifyListeners();
  }

  void _doFallForBot() {}
}
