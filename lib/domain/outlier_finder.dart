class OutlierFinder {
  int findOutlier(List<int> numbers) {
    if (numbers.length < 3) {
      throw TooFewNumbersException();
    }

    final firstThree = numbers.take(3);
    final evenCount = firstThree.where((n) => n.isEven).length;
    final majorityIsEven = evenCount >= 2;

    return numbers.firstWhere(
      (n) => majorityIsEven ? n.isOdd : n.isEven,
      orElse: () => throw OutlierNotFoundException(),
    );
  }
}

class TooFewNumbersException implements Exception {}

class OutlierNotFoundException implements Exception {}
