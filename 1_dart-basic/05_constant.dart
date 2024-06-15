void main() {
  const List<String> names1 = ['Dart', 'Flutter'];
  print(names1);

  const names2 = ['Dart', 'Flutter'];
  print(names2);

  // names2.removeAt(0);
  // ^ Error occurred because names2 is defined with const keyword

  final List<String> names3 = ['Dart', 'Flutter'];
  print(names3);

  final names4 = ['Dart', 'Flutter'];
  print(names4);

  names4.removeAt(0);
}
