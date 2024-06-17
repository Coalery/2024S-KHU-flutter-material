class Rectangle {
  int _id;
  double width;
  double height;

  Rectangle(this._id, this.width, this.height);

  Rectangle.forWidth(this.width) // 얘도 생성자에요.
      : this._id = 123,
        this.height = 0;

  double get area => width * height; // getter

  set id(int value) => _id = value; // setter

  void printArea() {
    print('The area of the rectangle is ${area}');
  }
}

void main() {
  Rectangle rectangle = Rectangle(0, 5, 10);
  rectangle.printArea();
  print(rectangle.width);

  Rectangle rectangle2 = Rectangle.forWidth(5);
  rectangle2.printArea();
  print(rectangle2._id); // 같은 파일이라 접근 가능
}
