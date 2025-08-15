
import 'player.dart';
import 'trainer.dart';

class Team {
  String _name;
  Trainer _trainer;
  List<Player> _players;
  String _strategy; // استراتيجية الفريق: Offensive, Defensive, Balanced

  Team({
    required String name,
    required Trainer trainer,
    required List<Player> players,
    String strategy = "Balanced", 
  })  : _name = name,
        _trainer = trainer,
        _players = players,
        _strategy = strategy;

  // Getters
  String get name => _name;
  Trainer get trainer => _trainer;
  List<Player> get players => _players;
  String get strategy => _strategy;

  // Setters
  set name(String n) => _name = n;
  set trainer(Trainer t) => _trainer = t;
  set players(List<Player> p) => _players = p;
  set strategy(String s) => _strategy = s;

  // عرض معلومات الفريق
  void displayInfo() {
    print("Team Name: $_name");
    print("Strategy: $_strategy");
    print("Trainer: ${_trainer.name}, Experience: ${_trainer.experience}");
    print("Players:");
    for (var player in _players) {
      player.displayInf();
      print("---");
    }
  }
}
