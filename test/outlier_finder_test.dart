import 'package:flutter_test/flutter_test.dart';
import 'package:outlier_app/domain/outlier_finder.dart';

void main() {
  group('OutlierFinder', () {
    late OutlierFinder finder;

    setUp(() {
      finder = OutlierFinder();
    });

    test('returns odd number when majority are even', () {
      final numbers = [2, 4, 0, 100, 4, 11, 2602, 36];
      final result = finder.findOutlier(numbers);
      expect(result, 11);
    });

    test('returns even number when majority are odd', () {
      final numbers = [160, 3, 1719, 19, 11, 13, -21];
      final result = finder.findOutlier(numbers);
      expect(result, 160);
    });

    test('throws TooFewNumbersException when less than 3 numbers are given', () {
      expect(
        () => finder.findOutlier([1, 2]),
        throwsA(isA<TooFewNumbersException>()),
      );
    });
  });
}
