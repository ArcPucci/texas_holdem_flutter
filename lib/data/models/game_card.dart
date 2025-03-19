class GameCard {
  final int id;
  final String _asset;
  final String suit;
  final int rank;

  bool _opened = false;
  bool get opened => _opened;

  String get image => _opened ? _asset : 'assets/png/cards/spades2.png';

  GameCard({
    required this.id,
    required String asset,
    required this.suit,
    required this.rank,
  }) : _asset = asset;

  void open() => _opened = true;
}
