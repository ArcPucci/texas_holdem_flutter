import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:texas_holdem/data/models/models.dart';

class Poker {
  static const _path = 'assets/png/cards';

  static List<GameCard> get fiftyTwoPlayingCards => [
        GameCard(id: 0, asset: '$_path/clubs2.png', suit: "clubs", rank: 2),
        GameCard(id: 1, asset: '$_path/clubs3.png', suit: "clubs", rank: 3),
        GameCard(id: 2, asset: '$_path/clubs4.png', suit: "clubs", rank: 4),
        GameCard(id: 3, asset: '$_path/clubs5.png', suit: "clubs", rank: 5),
        GameCard(id: 4, asset: '$_path/clubs6.png', suit: "clubs", rank: 6),
        GameCard(id: 5, asset: '$_path/clubs7.png', suit: "clubs", rank: 7),
        GameCard(id: 6, asset: '$_path/clubs8.png', suit: "clubs", rank: 8),
        GameCard(id: 7, asset: '$_path/clubs9.png', suit: "clubs", rank: 9),
        GameCard(id: 8, asset: '$_path/clubs10.png', suit: "clubs", rank: 10),
        GameCard(
            id: 9, asset: '$_path/clubs_jack.png', suit: "clubs", rank: 11),
        GameCard(
            id: 10, asset: '$_path/clubs_queen.png', suit: "clubs", rank: 12),
        GameCard(
            id: 11, asset: '$_path/clubs_king.png', suit: "clubs", rank: 13),
        GameCard(
            id: 12, asset: '$_path/clubs_ace.png', suit: "clubs", rank: 14),
        GameCard(id: 13, asset: '$_path/heart2.png', suit: "heart", rank: 2),
        GameCard(id: 14, asset: '$_path/heart3.png', suit: "heart", rank: 3),
        GameCard(id: 15, asset: '$_path/heart4.png', suit: "heart", rank: 4),
        GameCard(id: 16, asset: '$_path/heart5.png', suit: "heart", rank: 5),
        GameCard(id: 17, asset: '$_path/heart6.png', suit: "heart", rank: 6),
        GameCard(id: 18, asset: '$_path/heart7.png', suit: "heart", rank: 7),
        GameCard(id: 19, asset: '$_path/heart8.png', suit: "heart", rank: 8),
        GameCard(id: 20, asset: '$_path/heart9.png', suit: "heart", rank: 9),
        GameCard(id: 21, asset: '$_path/heart10.png', suit: "heart", rank: 10),
        GameCard(
            id: 22, asset: '$_path/heart_jack.png', suit: "heart", rank: 11),
        GameCard(
            id: 23, asset: '$_path/heart_queen.png', suit: "heart", rank: 12),
        GameCard(
            id: 24, asset: '$_path/heart_king.png', suit: "heart", rank: 13),
        GameCard(
            id: 25, asset: '$_path/heart_ace.png', suit: "heart", rank: 14),
        GameCard(id: 26, asset: '$_path/spades2.png', suit: "spades", rank: 2),
        GameCard(id: 27, asset: '$_path/spades3.png', suit: "spades", rank: 3),
        GameCard(id: 28, asset: '$_path/spades4.png', suit: "spades", rank: 4),
        GameCard(id: 29, asset: '$_path/spades5.png', suit: "spades", rank: 5),
        GameCard(id: 30, asset: '$_path/spades6.png', suit: "spades", rank: 6),
        GameCard(id: 31, asset: '$_path/spades7.png', suit: "spades", rank: 7),
        GameCard(id: 32, asset: '$_path/spades8.png', suit: "spades", rank: 8),
        GameCard(id: 33, asset: '$_path/spades9.png', suit: "spades", rank: 9),
        GameCard(
            id: 34, asset: '$_path/spades10.png', suit: "spades", rank: 10),
        GameCard(
            id: 35, asset: '$_path/spades_jack.png', suit: "spades", rank: 11),
        GameCard(
            id: 36, asset: '$_path/spades_queen.png', suit: "spades", rank: 12),
        GameCard(
            id: 37, asset: '$_path/spades_king.png', suit: "spades", rank: 13),
        GameCard(
            id: 38, asset: '$_path/spades_ace.png', suit: "spades", rank: 14),
        GameCard(
            id: 39, asset: '$_path/diamonds2.png', suit: "diamonds", rank: 2),
        GameCard(
            id: 40, asset: '$_path/diamonds3.png', suit: "diamonds", rank: 3),
        GameCard(
            id: 41, asset: '$_path/diamonds4.png', suit: "diamonds", rank: 4),
        GameCard(
            id: 42, asset: '$_path/diamonds5.png', suit: "diamonds", rank: 5),
        GameCard(
            id: 43, asset: '$_path/diamonds6.png', suit: "diamonds", rank: 6),
        GameCard(
            id: 44, asset: '$_path/diamonds7.png', suit: "diamonds", rank: 7),
        GameCard(
            id: 45, asset: '$_path/diamonds8.png', suit: "diamonds", rank: 8),
        GameCard(
            id: 46, asset: '$_path/diamonds9.png', suit: "diamonds", rank: 9),
        GameCard(
            id: 47, asset: '$_path/diamonds10.png', suit: "diamonds", rank: 10),
        GameCard(
            id: 48,
            asset: '$_path/diamonds_jack.png',
            suit: "diamonds",
            rank: 11),
        GameCard(
            id: 49,
            asset: '$_path/diamonds_queen.png',
            suit: "diamonds",
            rank: 12),
        GameCard(
            id: 50,
            asset: '$_path/diamonds_king.png',
            suit: "diamonds",
            rank: 13),
        GameCard(
            id: 51,
            asset: '$_path/diamonds_ace.png',
            suit: "diamonds",
            rank: 14),
      ];

  static final List<Player> defaultPlayers = [
    Player(name: "Player 1", isBot: false),
    Player(name: "Player 2", asset: 'assets/png/players/player8.png'),
    Player(name: "Player 3", asset: 'assets/png/players/player5.png'),
    Player(name: "Player 4", asset: 'assets/png/players/player7.png'),
    Player(name: "Player 5", asset: 'assets/png/players/player6.png'),
    Player(name: "Player 6", asset: 'assets/png/players/player4.png'),
  ];

  static final List<PlayerPosition> defaultPositions = [
    PlayerPosition(left: 133.w, top: 0),
    PlayerPosition(right: 0, top: 87.h),
    PlayerPosition(right: 0, bottom: 159.h),
    PlayerPosition(left: 133.w, bottom: 0),
    PlayerPosition(left: 0, bottom: 159.h),
    PlayerPosition(left: 0, top: 87.h),
  ];
}
