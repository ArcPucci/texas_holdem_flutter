import 'package:flutter/material.dart';
import 'package:texas_holdem/presentation/providers/providers.dart';

class LocalDataProvider extends ChangeNotifier {
  LocalDataProvider({
    required LocalDataRepository repository,
  }) : _repository = repository {
    initLocalData();
  }

  final LocalDataRepository _repository;

  int _money = 1000;

  int get money => _money;

  List<int> _receivedCards = [];

  List<int> get receivedCards => _receivedCards;

  DateTime? _lastDateReward;

  bool _hasReward = true;

  bool get hasReward => _hasReward;

  bool _mainRoomState = false;

  bool get mainRoomState => _mainRoomState;

  bool _finalRoomState = false;

  bool get finalRoomState => _finalRoomState;

  bool _firstInitGameMode = true;

  bool get firstInitGameMode => _firstInitGameMode;

  void initLocalData() {
    _money = _repository.receiveMoney();
    _receivedCards = _repository.getReceivedCards();
    _lastDateReward = _repository.getLastDateReward();
    _mainRoomState = _repository.getMainRoomState();
    _firstInitGameMode = _repository.getFirstInitGameMode();
    _finalRoomState = _repository.getFinalRoomState();

    if (_lastDateReward == null) _hasReward = true;
    if (_lastDateReward != null) {
      final currentDate = DateTime.now();
      final currentDateWithNoTime = DateTime(
        currentDate.year,
        currentDate.month,
        currentDate.day,
      );

      final lastDateWithNoTime = DateTime(
        _lastDateReward!.year,
        _lastDateReward!.month,
        _lastDateReward!.day,
      );

      _hasReward = lastDateWithNoTime.isBefore(currentDateWithNoTime);
    }
  }

  void receiveDailyReward() async {
    _hasReward = false;
    _money += 1000;

    await _repository.saveMoney(_money);
    await _repository.saveLastDateReward();

    notifyListeners();
  }

  void addCard(int index) async {
    if (_receivedCards.contains(index)) return;
    _receivedCards.add(index);
    await _repository.saveReceivedCards(_receivedCards);

    notifyListeners();
  }

  void saveMainRoomState() async {
    await _repository.saveMainRoomState();
    notifyListeners();
  }

  void saveFirstInitGameMode() async {
    _firstInitGameMode = false;
    await _repository.saveFirstInitGameMode();
    notifyListeners();
  }

  void saveFinalRoomState() async {
    _finalRoomState = true;
    await _repository.saveFinalRoomState();
    notifyListeners();
  }

  void addMoney(int value) async {
    if (_money + value < 0) return;
    _money += value;
    await _repository.saveMoney(_money);
    notifyListeners();
  }
}
