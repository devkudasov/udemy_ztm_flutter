void main() {
  Car car1 = Car();
  car1.color = 'red';
  Car car2 = Car();
  car2.color = 'blue';

  car1.drive();
  car1.whichColor();

  car2.drive();
  car2.whichColor();
}

class Car {
  late String color;

  void drive() {
    print('$color is driving');
  }

  void whichColor() {
    print('car color is $color');
  }
}
