import 'package:texas_holdem/data/models/models.dart';

class PokerChecker {
  static PokerHand findBestCombination(List<GameCard> cards) {
    if (cards.length < 5) return PokerHand("None", 0, []);

    final rankGroups = <int, List<GameCard>>{};
    for (var card in cards) {
      rankGroups.putIfAbsent(card.rank, () => []).add(card);
    }

    if (rankGroups.values.any((group) => group.length == 4)) {
      final quadRank =
          rankGroups.entries.firstWhere((e) => e.value.length == 4).key;
      final kicker = cards
          .where((c) => c.rank != quadRank)
          .map((c) => c.rank)
          .toList()
        ..sort((a, b) => b - a);
      return PokerHand("Four of a Kind", 7, [quadRank, ...kicker]);
    }

    if (rankGroups.values.any((group) => group.length == 3) &&
        rankGroups.values.any((group) => group.length == 2)) {
      final tripleRank =
          rankGroups.entries.firstWhere((e) => e.value.length == 3).key;
      final pairRank =
          rankGroups.entries.firstWhere((e) => e.value.length == 2).key;
      return PokerHand("Full House", 6, [tripleRank, pairRank]);
    }

    if (_hasFlush(cards)) {
      final flushCards = _getFlushCards(cards);
      return PokerHand("Flush", 5, flushCards);
    }

    if (_hasStraight(cards)) {
      final straightHighCard = _getStraightHighCard(cards);
      return PokerHand("Straight", 4, [straightHighCard]);
    }

    if (rankGroups.values.any((group) => group.length == 3)) {
      final tripleRank =
          rankGroups.entries.firstWhere((e) => e.value.length == 3).key;
      final kickers = cards
          .where((c) => c.rank != tripleRank)
          .map((c) => c.rank)
          .toList()
        ..sort((a, b) => b - a);
      return PokerHand("Three of a Kind", 3, [tripleRank, ...kickers]);
    }

    final pairs = rankGroups.entries
        .where((e) => e.value.length == 2)
        .map((e) => e.key)
        .toList()
      ..sort((a, b) => b - a);
    if (pairs.length >= 2) {
      final kickers = cards
          .where((c) => !pairs.contains(c.rank))
          .map((c) => c.rank)
          .toList()
        ..sort((a, b) => b - a);
      return PokerHand("Two Pair", 2, [pairs[0], pairs[1], ...kickers]);
    }

    if (pairs.length == 1) {
      final kickers = cards
          .where((c) => c.rank != pairs[0])
          .map((c) => c.rank)
          .toList()
        ..sort((a, b) => b - a);
      return PokerHand("One Pair", 1, [pairs[0], ...kickers]);
    }

    final highCards = cards.map((c) => c.rank).toList()..sort((a, b) => b - a);
    return PokerHand("High Card", 0, highCards);
  }

  static bool _hasFlush(List<GameCard> cards) {
    final suitGroups = <String, List<GameCard>>{};
    for (var card in cards) {
      suitGroups.putIfAbsent(card.suit, () => []).add(card);
    }
    return suitGroups.values.any((group) => group.length >= 5);
  }

  static List<int> _getFlushCards(List<GameCard> cards) {
    final suitGroups = <String, List<GameCard>>{};
    for (var card in cards) {
      suitGroups.putIfAbsent(card.suit, () => []).add(card);
    }
    final flushGroup =
    suitGroups.values.firstWhere((group) => group.length >= 5);
    return flushGroup.map((c) => c.rank).toList()..sort((a, b) => b - a);
  }

  static bool _hasStraight(List<GameCard> cards) {
    final uniqueRanks = cards.map((card) => card.rank).toSet().toList()..sort();
    for (int i = 0; i <= uniqueRanks.length - 5; i++) {
      if (uniqueRanks[i + 4] - uniqueRanks[i] == 4) {
        return true;
      }
    }
    if (uniqueRanks.contains(14)) {
      final lowAceStraight = [2, 3, 4, 5, 14];
      if (lowAceStraight.every((rank) => uniqueRanks.contains(rank))) {
        return true;
      }
    }
    return false;
  }

  static int _getStraightHighCard(List<GameCard> cards) {
    final uniqueRanks = cards.map((card) => card.rank).toSet().toList()..sort();
    for (int i = 0; i <= uniqueRanks.length - 5; i++) {
      if (uniqueRanks[i + 4] - uniqueRanks[i] == 4) {
        return uniqueRanks[i + 4];
      }
    }
    if (uniqueRanks.contains(14)) {
      final lowAceStraight = [2, 3, 4, 5, 14];
      if (lowAceStraight.every((rank) => uniqueRanks.contains(rank))) {
        return 5;
      }
    }
    return 0;
  }

  static List<int> findBestPokerCombination(List<GameCard> cards) {
    if (cards.length < 5) return [];

    final rankGroups = <int, List<GameCard>>{};
    final suitGroups = <String, List<GameCard>>{};

    for (var card in cards) {
      rankGroups.putIfAbsent(card.rank, () => []).add(card);
      suitGroups.putIfAbsent(card.suit, () => []).add(card);
    }

    if (suitGroups.values.any((group) => group.length >= 5)) {
      final flushCards = suitGroups.values.firstWhere((group) => group.length >= 5);
      flushCards.sort((a, b) => b.rank - a.rank);
      if (_isStraight(flushCards)) {
        return flushCards.take(5).map((c) => c.id).toList();
      }
    }

    if (rankGroups.values.any((group) => group.length == 4)) {
      final quadRank = rankGroups.entries.firstWhere((e) => e.value.length == 4).key;
      final quadCards = rankGroups[quadRank]!;
      final kicker = cards
          .where((c) => c.rank != quadRank)
          .toList()
        ..sort((a, b) => b.rank - a.rank);
      return [...quadCards.map((c) => c.id), kicker.first.id];
    }

    if (rankGroups.values.any((group) => group.length == 3) &&
        rankGroups.values.any((group) => group.length == 2)) {
      final tripleRank = rankGroups.entries.firstWhere((e) => e.value.length == 3).key;
      final pairRank = rankGroups.entries.firstWhere((e) => e.value.length == 2).key;
      final tripleCards = rankGroups[tripleRank]!;
      final pairCards = rankGroups[pairRank]!;
      return [...tripleCards.map((c) => c.id), ...pairCards.map((c) => c.id)];
    }

    if (suitGroups.values.any((group) => group.length >= 5)) {
      final flushCards = suitGroups.values.firstWhere((group) => group.length >= 5);
      flushCards.sort((a, b) => b.rank - a.rank);
      return flushCards.take(5).map((c) => c.id).toList();
    }

    if (_isStraight(cards)) {
      final straightCards = _getStraightCards(cards);
      return straightCards.map((c) => c.id).toList();
    }

    if (rankGroups.values.any((group) => group.length == 3)) {
      final tripleRank = rankGroups.entries.firstWhere((e) => e.value.length == 3).key;
      final tripleCards = rankGroups[tripleRank]!;
      final kickers = cards
          .where((c) => c.rank != tripleRank)
          .toList()
        ..sort((a, b) => b.rank - a.rank);
      return [...tripleCards.map((c) => c.id), kickers[0].id, kickers[1].id];
    }

    final pairs = rankGroups.entries
        .where((e) => e.value.length == 2)
        .map((e) => e.key)
        .toList()
      ..sort((a, b) => b - a);
    if (pairs.length >= 2) {
      final pair1Cards = rankGroups[pairs[0]]!;
      final pair2Cards = rankGroups[pairs[1]]!;
      final kicker = cards
          .where((c) => c.rank != pairs[0] && c.rank != pairs[1])
          .toList()
        ..sort((a, b) => b.rank - a.rank);
      return [
        ...pair1Cards.map((c) => c.id),
        ...pair2Cards.map((c) => c.id),
        kicker.first.id
      ];
    }

    if (pairs.length == 1) {
      final pairCards = rankGroups[pairs[0]]!;
      final kickers = cards
          .where((c) => c.rank != pairs[0])
          .toList()
        ..sort((a, b) => b.rank - a.rank);
      return [
        ...pairCards.map((c) => c.id),
        kickers[0].id,
        kickers[1].id,
        kickers[2].id
      ];
    }

    final highCards = cards.toList()..sort((a, b) => b.rank - a.rank);
    return highCards.take(5).map((c) => c.id).toList();
  }

  static bool _isStraight(List<GameCard> cards) {
    final uniqueRanks = cards.map((c) => c.rank).toSet().toList()..sort();
    for (int i = 0; i <= uniqueRanks.length - 5; i++) {
      if (uniqueRanks[i + 4] - uniqueRanks[i] == 4) {
        return true;
      }
    }
    return false;
  }

  static List<GameCard> _getStraightCards(List<GameCard> cards) {
    final uniqueRanks = cards.map((c) => c.rank).toSet().toList()..sort();
    for (int i = 0; i <= uniqueRanks.length - 5; i++) {
      if (uniqueRanks[i + 4] - uniqueRanks[i] == 4) {
        final straightRanks = uniqueRanks.sublist(i, i + 5);
        return cards.where((c) => straightRanks.contains(c.rank)).toList();
      }
    }
    return [];
  }
}
