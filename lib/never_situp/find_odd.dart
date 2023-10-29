int findOdd(List<int> numbers) {
  if (numbers.isEmpty) {
    throw ArgumentError('Empty numbers');
  }

  final countMap = <int, int>{};

  // Count and map number
  for (int num in numbers) {
    if (countMap.containsKey(num)) {
      countMap[num] = countMap[num]! + 1;
    } else {
      countMap[num] = 1;
    }
  }

  // find  odd and return
  for (int num in numbers) {
    if (countMap[num]! % 2 != 0) {
      return num;
    }
  }

  throw StateError('No odd found');
}

void main() {
  print("result ${findOdd([0, 0, 1, 1])}");
}
