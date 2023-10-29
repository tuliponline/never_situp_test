import 'package:flutter_test/flutter_test.dart';
import 'package:never_situp_test/never_situp/find_odd.dart';

void main() {
  group('findOdd tests', () {
    test('Case 1', () {
      expect(findOdd([7]), equals(7));
    });

    test('Case 2', () {
      expect(findOdd([0]), equals(0));
    });

    test('Case 3', () {
      expect(findOdd([1, 1, 2]), equals(2));
    });

    test('Case 4', () {
      expect(findOdd([0, 1, 0, 1, 0]), equals(0));
    });

    test('Case 5', () {
      expect(findOdd([1, 2, 2, 3, 3, 3, 4, 3, 3, 3, 2, 2, 1]), equals(4));
    });

    test('Empty input', () {
      expect(() => findOdd([]), throwsA(isA<ArgumentError>()));
    });

    test('No odd', () {
      expect(() => findOdd([2, 2, 4, 4, 6, 6]), throwsA(isA<StateError>()));
    });
  });
}
