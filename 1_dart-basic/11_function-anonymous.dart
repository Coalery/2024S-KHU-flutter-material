void main() {
  var add = (int a, int b) {
    return a + b;
  };
  print(add(10, 20)); // 30

  var add2 = (int a, int b) => a + b;
  print(add2(10, 20)); // 30

  var add3 = (int a, [int b = 10]) => a + b;
  print(add3(10)); // 20

  var add4 = ({required int a, int b = 20}) => a + b;
  print(add4(a: 10)); // 30
  print(add4(a: 10, b: 10)); // 20

  var add5 = (int a, {int b = 20}) => a + b;
  print(add5(10)); // 30
  print(add5(10, b: 10)); // 20
}
