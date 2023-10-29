int countSmileys(List<String> arr) {
  if (arr.isEmpty) {
    return 0;
  }
  final validSmileyPattern = RegExp(r'^[:;][-~]?[)D]$');
  return arr.where((face) => validSmileyPattern.hasMatch(face)).length;
}

void main(List<String> args) {
  print(countSmileys([':D', ':~)', ';~D', ':)']));
}
