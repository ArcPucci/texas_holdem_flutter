import 'package:shared_preferences/shared_preferences.dart';

class LocalDataRepository {
  final SharedPreferences _preferences;

  LocalDataRepository(this._preferences);

  static const _moneyKey = 'money';
  static const _receivedCardsKey = 'received_cards';
  static const _lastRewardDateKey = 'last_reward_date';
  static const _mainRoomKey = 'main_room';
  static const _firstInitGameModeKey = 'first_init_game_mode';
  static const _finalRoomKey = 'final_room';

  Future<void> saveMoney(int money) async {
    await _preferences.setInt(_moneyKey, money);
  }

  int receiveMoney() {
    return _preferences.getInt(_moneyKey) ?? 1000;
  }

  Future<void> saveReceivedCards(List<int> cards) async {
    final json = cards.map((e) => e.toString()).toList();
    await _preferences.setStringList(_receivedCardsKey, json);
  }

  List<int> getReceivedCards() {
    final json = _preferences.getStringList(_receivedCardsKey);
    if (json == null) return [];

    return json.map((e) => int.parse(e)).toList();
  }

  Future<void> saveLastDateReward() async {
    final currentDate = DateTime.now().microsecondsSinceEpoch;
    await _preferences.setInt(_lastRewardDateKey, currentDate);
  }

  DateTime? getLastDateReward() {
    final data = _preferences.getInt(_lastRewardDateKey);
    if (data == null) return null;

    final date = DateTime.fromMicrosecondsSinceEpoch(data);
    return date;
  }

  Future<void> saveMainRoomState() async {
    await _preferences.setBool(_mainRoomKey, true);
  }

  bool getMainRoomState() {
    return _preferences.getBool(_mainRoomKey) ?? false;
  }

  Future<void> saveFirstInitGameMode() async {
    await _preferences.setBool(_firstInitGameModeKey, false);
  }

  bool getFirstInitGameMode() {
    return _preferences.getBool(_firstInitGameModeKey) ?? true;
  }

  Future<void> saveFinalRoomState() async {
    await _preferences.setBool(_finalRoomKey, true);
  }

  bool getFinalRoomState() {
    return _preferences.getBool(_finalRoomKey) ?? false;
  }
}
