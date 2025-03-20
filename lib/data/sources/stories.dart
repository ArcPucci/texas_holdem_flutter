import 'package:texas_holdem/data/models/models.dart';

const _path = 'assets/png/players';

final List<Story> stories = [
  Story(
    id: 0,
    table: 'assets/png/tables/wild_west_table.png',
    players: [
      Player(name: "Bandit", asset: '$_path/player2.png'),
      null,
      null,
      Player(name: "Alex", isBot: false),
      null,
      null,
    ],
    path: '/modes/stories/wild_west',
  ),
  Story(
    id: 1,
    table: 'assets/png/tables/greece_table.png',
    players: [
      Player(name: "Emperor", asset: '$_path/player4.png'),
      Player(name: "Military", asset: '$_path/player7.png'),
      Player(name: "Nobility", asset: '$_path/player5.png'),
      Player(name: "Alex", isBot: false, asset: '$_path/player3.png'),
      Player(name: "Nobility", asset: '$_path/player6.png'),
      Player(name: "Military", asset: '$_path/player8.png'),
    ],
    path: '/modes/stories/ancient_greece',
  ),
  Story(
    id: 2,
    table: 'assets/png/tables/knight_table.png',
    players: [
      Player(name: "Montford", asset: '$_path/player9.png'),
      null,
      null,
      Player(name: "Alex", isBot: false, asset: '$_path/player3.png'),
      null,
      null,
    ],
    path: '/modes/stories/knights_armor',
  ),
];
