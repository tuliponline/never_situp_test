import 'package:flutter_test/flutter_test.dart';
import 'package:never_situp_test/never_situp/count_smileys.dart';

void main() {
  group('Test smaileys', () {
    test('Case 1', () {
      expect(countSmileys([':)', ';(', ';}', ':-D']), equals(2));
    });
    test('Case 2', () {
      expect(countSmileys([';D', ':-(', ':-)', ';~)']), equals(3));
    });
    test('Case 3', () {
      expect(countSmileys([';]', ':[', ';*', ';-D']), equals(1));
    });

    test('Empty input', () {
      expect(countSmileys([]), equals(0));
    });
  });
}
