

import 'player.dart';
import 'trainer.dart';
import 'team.dart';
import 'stadium.dart';
import 'game.dart';

void main() {
  // إنشاء اللاعبين للفرق 
  List<Player> players1 = [
    Player(name: "Alice", position: "Forward", id: 1, age: 22),
    Player(name: "Bob", position: "Midfield", id: 2, age: 24)
  ];

  List<Player> players2 = [
    Player(name: "Charlie", position: "Forward", id: 1, age: 23),
    Player(name: "David", position: "Midfield", id: 2, age: 25)
  ];

  // إنشاء المدربين
  Trainer trainer1 = Trainer(name: "Coach A");
  Trainer trainer2 = Trainer(name: "Coach B");

  // إنشاء الفرق مع الاستراتيجية
  Team team1 = Team(name: "Red Lions", trainer: trainer1, players: players1, strategy: "Offensive");
  Team team2 = Team(name: "Blue Tigers", trainer: trainer2, players: players2, strategy: "Defensive");

  // إنشاء الملعب
  Stadium stadium = Stadium(name: "National Stadium", location: "City Center");

  // إنشاء  اللعبة
  Game game = Game(team1: team1, team2: team2, stadium: stadium);
  game.startMatch();
}
