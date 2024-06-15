void main() {
  int a = 10;
  int b = 4;
  double result = a / b;
  print(result); // 2.5

  int result2 = a ~/ b;
  print(result2); // 2

  String? name = null;
  print(name?.length); // null

  String name2 = name ?? 'Dart';
  print(name2); // Dart

  String hello = 'Hello, ${name2}';
  print(hello); // Hello, Dart

  String hello2 = 'Hello, $name2, ${name2.length}';
  // 변수 하나면 중괄호 생략 가능. `.`으로 체이닝되면 중괄호 필수
  print(hello2); // Hello, Dart
}
