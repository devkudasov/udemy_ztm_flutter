void main() {
  Car car = Car(color: 'red', engine: 'V8');
  car.whichColor();
  car.drive();
}

class Car {
  final String _color;
  final String _engine;

  Car({required String color, required String engine})
      : this._color = color,
        this._engine = engine;

  void drive() {
    print('$_engine is driving');
  }

  void whichColor() {
    print('car color is $_color');
  }
}
