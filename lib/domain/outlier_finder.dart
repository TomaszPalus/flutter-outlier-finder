class OutlierFinder {
  int findOutlier(List<int> numbers) {
    if (numbers.length < 3) {
      throw ArgumentError('Lista musi zawierać co najmniej 3 elementy.');
    }

    final firstThree = numbers.take(3);
    final evenCount = firstThree.where((n) => n.isEven).length;
    final majorityIsEven = evenCount >= 2;

    return numbers.firstWhere(
      (n) => majorityIsEven ? n.isOdd : n.isEven,
      orElse: () => throw StateError('Nie znaleziono wartości odstającej.'),
    );
  }
}
