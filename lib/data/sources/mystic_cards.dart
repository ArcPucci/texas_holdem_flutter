import 'package:texas_holdem/data/models/models.dart';

const _path = 'assets/png/mystic_cards';

final List<MysticCard> mysticCards = [
  MysticCard(
    id: 0,
    name: 'Mysterious deck\nof cards',
    asset: '$_path/card1.png',
  ),
  MysticCard(
    id: 1,
    name: 'Roman\nColosseum Card',
    asset: '$_path/card2.png',
  ),
  MysticCard(
    id: 2,
    name: 'Ankh-shaped\namulet',
    asset: '$_path/card3.png',
  ),
  MysticCard(
    id: 3,
    name: 'Medieval castle\ncard',
    asset: '$_path/card4.png',
  ),
  MysticCard(
    id: 4,
    name: 'Alex room\ncard',
    asset: '$_path/card5.png',
  ),
  MysticCard(
    id: 5,
    name: 'Mysterious new\ncard',
    asset: '$_path/card6.png',
  ),
];
