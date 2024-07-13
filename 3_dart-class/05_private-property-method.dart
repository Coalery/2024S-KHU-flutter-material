import 'others/some.dart';

void main() {
  Some some = Some();
  print(some.publicSome);
  // print(some._privateSome); // Error: The getter '_privateSome' isn't defined for the class 'Some'.
  some.publicMethod();
  // some._privateMethod(); // Error: The method '_privateMethod' isn't defined for the class 'Some'.
  some.publicMethodCallPrivateMethod();
}
