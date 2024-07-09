String createProfile(
    {required String name, String? description, int age = 20}) {
  return 'Name: $name, Description: $description, Age: $age';
}

void main() {
  print(createProfile(name: 'Lery', description: 'Hello'));
  print(createProfile(name: 'Lery'));
}
