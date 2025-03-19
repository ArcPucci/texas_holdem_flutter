import 'package:texas_holdem/data/models/models.dart';

class Player {
  final String name;
  final String asset;
  int bet = 0;
  bool canRaise = true;
  bool didAction = false;
  bool active = true;
  final bool isBot;
  final List<GameCard> hand = [];

  Player({
    this.isBot = true,
    this.asset = "assets/png/players/player1.png",
    this.name = "Player",
  });
}
