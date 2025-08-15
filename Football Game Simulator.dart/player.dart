
import 'dart:math';

class Player {
  String _name;
  String _position;
  int _id;
  int _power;
  int _age; // غير nullable

  Player({
    required String name,
    required String position,
    required int id,
    required int age,
  })  :
    _name = name,
    _position = position,
    _id = id,
    _power = Random().nextInt(100),
    _age = age;

  // Setters
  set name(String newname) => _name = newname;
  set power(int newpower) {
    if (newpower > 0 && newpower <= 100) {
      _power = newpower;
    }
  }

  // Getters
  String get name => _name;
  int get power => _power;
  String get position => _position;
  int get age => _age;
  int get id => _id;

  void displayInf() {
    print("Name: $_name");
    print("Position: $_position");
    print("Id: $_id");
    print("Power: $_power");
    print("Age: $_age");
  }
}
