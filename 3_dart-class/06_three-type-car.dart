class Car {
  String color;
  int maxSpeed;
  int currentSpeed;

  Car(this.color, this.maxSpeed, this.currentSpeed);

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

class Truck {
  String color;
  int maxSpeed;
  int currentSpeed;
  int maxLoad;
  int currentLoad;

  Truck(this.color, this.maxSpeed, this.currentSpeed, this.maxLoad,
      this.currentLoad);

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

  void load(int additionalLoad) {
    if (currentLoad + additionalLoad > maxLoad) {
      print('짐이 너무 많아 더 실을 수 없어요.');
    }

    currentLoad += additionalLoad;
    print(
        '$color 색깔 트럭에 $additionalLoad 무게의 짐을 실었습니다. 현재 $currentLoad 무게의 짐이 실려있습니다.');
  }
}

class ElectricCar {
  String color;
  int maxSpeed;
  int currentSpeed;
  double battery;

  ElectricCar(this.color, this.maxSpeed, this.currentSpeed, this.battery);

  void move() {
    currentSpeed += 100;

    if (currentSpeed > maxSpeed) {
      currentSpeed = maxSpeed;
    }

    print('$color 색깔 자동차가 최대 $currentSpeed 속도로 움직입니다.');

    battery -= 10;
    print('배터리가 $battery% 남았습니다.');
  }

  void stop() {
    currentSpeed = 0;
    print('$color 색깔 자동차가 멈춥니다.');
  }

  void honk() {
    print('$currentSpeed 속도로 달리는 $color 색깔 자동차가 경적을 울립니다.');
  }

  void charge() {
    battery = 100;
    print('$color 색깔 전기차가 배터리를 충전했습니다.');
  }
}

void main() {
  Car car = Car('검정', 200, 0);
  car.move();
  car.stop();
  car.honk();

  print('');

  Truck truck = Truck('파랑', 180, 0, 1000, 0);
  truck.move();
  truck.load(500);
  truck.load(500);
  truck.load(500);
  truck.honk();
  truck.stop();

  print('');

  ElectricCar electricCar = ElectricCar('흰색', 250, 0, 100);
  electricCar.move();
  electricCar.charge();
  electricCar.honk();
  electricCar.stop();
}
