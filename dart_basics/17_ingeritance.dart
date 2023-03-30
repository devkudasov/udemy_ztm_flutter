void main() {
  Student student1 = Student();
  student1.setSemester = 2;
  student1.setName = 'Shivu';
  student1.setAge = 99;

  Person person1 = Person();
  person1.setName = 'Guru';
  person1.setAge = 1000;

  int semester = student1.getSemester;
  print(semester);

  student1.study();
  student1.jump();
}

mixin Lerner {
  void study() {
    print('study');
  }
}

mixin Jumper {
  void jump() {
    print('jump');
  }
}

class Person {
  late String _name;
  late int _age;

  // Getters
  String get getName => _name;
  int get getAge => _age;

  // Setters
  set setName(String name) => _name = name;
  set setAge(int age) => _age = age;

  void run() {
    print('$_name runs!');
  }
}

class Student extends Person with Lerner, Jumper {
  late int _semester;

  // Getters
  int get getSemester => this._semester;

  // Setters
  set setSemester(int semester) => this._semester = semester;

  void party() {
    print('$_name is on the party');
  }
}
