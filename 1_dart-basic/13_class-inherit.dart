class Animal {
  String name;

  Animal(this.name);

  void eat() {
    print('$name is eating.');
  }
}

class Dog extends Animal {
  String breed;

  Dog(String name, this.breed) : super(name);

  void bark() {
    print('$name is barking.');
  }
}

class Cat extends Animal {
  Cat(String name) : super(name);

  @override
  void eat() {
    print('$name is eating quietly.');
  }
}

void main() {
  Dog dog = Dog('Buddy', 'Labrador');
  dog.eat(); // Output: Buddy is eating.
  dog.bark(); // Output: Buddy is barking.

  Cat cat = Cat('Kitty');
  cat.eat(); // Output: Kitty is eating quietly.
}
