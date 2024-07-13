class Some {
  String publicSome = 'publicSome';
  String _privateSome = 'privateSome';

  void publicMethod() {
    print(publicSome);
  }

  void _privateMethod() {
    print(_privateSome);
  }

  void publicMethodCallPrivateMethod() {
    _privateMethod();
  }
}
