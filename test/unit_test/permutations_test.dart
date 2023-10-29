import 'package:flutter_test/flutter_test.dart';
import 'package:never_situp_test/never_situp/permutations.dart';

void main() {
  group('Test Permutations', () {
    test('Case 1', () {
      expect(permutations('aab'), ['aab', 'aba', 'baa']);
    });
    test('Case 2', () {
      expect(permutations('abc'), ['abc', 'acb', 'bac', 'bca', 'cab', 'cba']);
    });

    test('Empty input', () {
      expect(() => permutations(''), throwsA(isA<ArgumentError>()));
    });
  });
}
