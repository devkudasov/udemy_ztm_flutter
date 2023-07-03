void main(List<String> args) {
  //records
  final (firstName, lastName) = records();
  print(firstName);
  print(lastName);

  // short switch
  final describedDate = describeDate(DateTime.now());
  print(describedDate);

  final soundOfAnimal = whatDoesItSound(Pig());
  print(soundOfAnimal);

  // class modifiers
  final cls = WeDoSmth();
  cls.myMethod();
}

String describeDate(DateTime dt) => switch (dt.weekday) {
      1 => 'Feeling relaxed after the weekend',
      6 || 7 => 'WEEKEND: HURRAY!',
      _ => 'Hang in there',
    };

(String, String) records() {
  final firstName = 'Dmitriy';
  final lastName = 'Kudasov';

  return (firstName, lastName);
}

String whatDoesItSound(Animal animal) => switch (animal) {
      Cow c => '$c moo',
      Sheep s => '$s says baa',
      Pig _ => 'oink',
      _ => 'Hang in there',
    };

abstract interface class DoSmth {
  void myMethod();
}

class WeDoSmth implements DoSmth {
  @override
  void myMethod() {
    print('We do something there');
  }
}

sealed class Animal {}

class Cow extends Animal {}

class Sheep extends Animal {}

class Pig extends Animal {}

class Leon extends Animal {}
