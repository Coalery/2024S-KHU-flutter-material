class Car {
  // 프로퍼티
  String color;
  int maxSpeed;
  int currentSpeed;

  // 생성자
  Car(this.color, this.maxSpeed, this.currentSpeed);

  // 메서드
  void move() {
    currentSpeed += 100;

    if (currentSpeed > maxSpeed) {
      currentSpeed = maxSpeed;
    }

    print('$color 색깔 자동차가 최대 $currentSpeed 속도로 움직입니다.');
  }

  void stop() {
    currentSpeed = 0;
    print('$color 색깔 자동차가 멈춥니다.');
  }

  void honk() {
    print('$currentSpeed 속도로 달리는 $color 색깔 자동차가 경적을 울립니다.');
  }
}

void main() {
  Car car = Car('검정', 200, 0);
  car.move();
  car.move();
  car.move();
  car.stop();
  car.honk();
}
