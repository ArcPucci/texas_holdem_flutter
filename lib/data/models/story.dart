import 'package:texas_holdem/data/models/player.dart';

class Story {
  final int id;
  final String table;
  final List<Player?> players;
  final String path;

  Story({
    required this.id,
    required this.table,
    required this.players,
    required this.path,
  });
}
