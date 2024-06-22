void main() {
  Future.delayed(Duration(seconds: 2), () {
    print('Delayed Future');
  }).then((value) {
    print('Delayed Future completed');
  });

  Future.any([
    Future.delayed(Duration(seconds: 3), () => 'Future 1'),
    Future.delayed(Duration(seconds: 2), () => 'Future 2'),
    Future.delayed(Duration(seconds: 1), () => 'Future 3'),
  ]).then((value) {
    print('Any Future completed: $value');
  });

  Future.wait([
    Future.delayed(Duration(seconds: 2), () => 'Future 1'),
    Future.delayed(Duration(seconds: 1), () => 'Future 2'),
  ]).then((value) {
    print('All Futures completed: $value');
  });
}
