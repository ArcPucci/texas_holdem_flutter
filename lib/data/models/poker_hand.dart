class PokerHand {
  final String name;
  final int rank;
  final List<int> highCards;

  PokerHand(this.name, this.rank, this.highCards);

  @override
  String toString() => "$name (${highCards.join(', ')})";

  int compareTo(PokerHand other) {
    if (rank != other.rank) {
      return rank - other.rank;
    }
    for (int i = 0; i < highCards.length; i++) {
      if (i >= other.highCards.length) return 1;
      if (highCards[i] != other.highCards[i]) {
        return highCards[i] - other.highCards[i];
      }
    }
    return 0;
  }
}
