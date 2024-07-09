int add(int a, int b) {
  return a + b;
}

int shortAdd(int a, int b) => a + b;

void main() {
  print(add(1, 2)); // 3
  print(shortAdd(1, 2)); // 3
}
