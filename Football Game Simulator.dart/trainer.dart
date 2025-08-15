import 'dart:math';

class Trainer {
  String _name;
  int _experience; 

  
  Trainer({required String name})
      : _name = name,
        _experience = Random().nextInt(15); 
  // Setter
  set name(String newname) => _name = newname;

  // Getters
  String get name => _name;
  int get experience => _experience;

  void displayInfo() {
    print("Trainer Name: $_name");
    print("Experience: $_experience years");

  }
}