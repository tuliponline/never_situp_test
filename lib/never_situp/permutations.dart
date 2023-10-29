permutations(String input) {
  if (input == '') {
    throw ArgumentError('Empty String');
  }
  List<String> results = [];
  _genUnique(input.split(''), 0, input.length - 1, results);
  results = results.toSet().toList();
  results.sort();
  print(results);
  return results;
}

void _genUnique(
    List<String> stringList, int left, int right, List<String> results) {
  if (left == right) {
    results.add(stringList.join());
  } else {
    for (int i = left; i <= right; i++) {
      _swap(stringList, left, i);
      _genUnique(stringList, left + 1, right, results);
      _swap(stringList, left, i);
    }
  }
}

void _swap(List<String> stringList, int i, int j) {
  String temp = stringList[i];
  stringList[i] = stringList[j];
  stringList[j] = temp;
}

void main() {
  permutations("abc");
}
