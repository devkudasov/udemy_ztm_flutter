void main() {
  Car car1 = Car();
  car1.setColor = 'red';
  Car car2 = Car();
  car2.setColor = 'blue';

  car1.drive();
  car1.whichColor();

  car2.drive();
  car2.whichColor();
}

class Car {
  late String _color;

  set setColor(String color) {
    _color = color;
  }

  String get color => this._color;

  void drive() {
    print('$_color is driving');
  }

  void whichColor() {
    print('car color is $_color');
  }
}
