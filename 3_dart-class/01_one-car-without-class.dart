int move(String carColor, int carCurrentSpeed, int carMaxSpeed) {
  carCurrentSpeed += 100;

  if (carCurrentSpeed > carMaxSpeed) {
    carCurrentSpeed = carMaxSpeed;
  }

  print('$carColor 색깔 자동차가 최대 $carCurrentSpeed 속도로 움직입니다.');
  return carCurrentSpeed;
}

int stop(String carColor) {
  print('$carColor 색깔 자동차가 멈춥니다.');
  return 0;
}

void honk(String carColor, int carCurrentSpeed) {
  print('$carCurrentSpeed 속도로 달리는 $carColor 색깔 자동차가 경적을 울립니다.');
}

void main() {
  String carColor = '검정';
  int carMaxSpeed = 200;
  int carCurrentSpeed = 0;

  carCurrentSpeed = move(carColor, carCurrentSpeed, carMaxSpeed);
  carCurrentSpeed = move(carColor, carCurrentSpeed, carMaxSpeed);
  carCurrentSpeed = move(carColor, carCurrentSpeed, carMaxSpeed);
  carCurrentSpeed = stop(carColor);
  honk(carColor, carCurrentSpeed);
}
