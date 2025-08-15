

import 'dart:math';
import 'stadium.dart';
import 'team.dart';

class Game {
  Team _team1;
  Team _team2;
  Stadium _stadium;
  List<String> matchEvents = [];
  Map<String, Map<String, int>> matchStrategyTable = {};
  Random _random = Random();

  // Constructor
  Game({
    required Team team1,
    required Team team2,
    required Stadium stadium,
  })  : _team1 = team1,
        _team2 = team2,
        _stadium = stadium {
    _initializeStrategyTable();
  }

 
  void _initializeStrategyTable() {
    matchStrategyTable = {
      "Offensive": {"Offensive": 7, "Defensive": 5, "Balanced": 6},
      "Defensive": {"Offensive": 10, "Defensive": 7, "Balanced": 6},
      "Balanced": {"Offensive": 6, "Defensive": 6, "Balanced": 7},
    };
  }

  // Getters
  Team get team1 => _team1;
  Team get team2 => _team2;
  Stadium get stadium => _stadium;
  List<String> get events => matchEvents;

  // Setters
  set team1(Team t) => _team1 = t;
  set team2(Team t) => _team2 = t;
  set stadium(Stadium s) => _stadium = s;

  // حساب القوة الإجمالية لفريق
  int calculateTeamPower(Team team) {
    // مجموع قوى اللاعبين
    int playersPower = team.players.fold(0, (sum, player) => sum + player.power);

    // قوة المدرب
    int trainerPower = team.trainer.experience;

    // مكافأة الاستراتيجية اعتمادًا على استراتيجية الفريق المنافس
    int strategyBonus = matchStrategyTable[team.strategy]![getOpponentStrategy(team)]!;

    int randomFactor = _random.nextInt(10);

    return playersPower + trainerPower + strategyBonus + randomFactor;
  }

  // الحصول على استراتيجية الفريق المنافس
  String getOpponentStrategy(Team team) {
    return team == _team1 ? _team2.strategy : _team1.strategy;
  }

  // محاكاة أحداث المباراة العشوائية
  void simulateMatchEvents() {
    List<String> possibleEvents = [
      "${_team1.name} scored a goal!",
      "${_team2.name} scored a goal!",
      "${_team1.name} gets a yellow card",
      "${_team2.name} gets a red card",
      "Injury in ${_team1.name}",
      "Injury in ${_team2.name}"
    ];

    // توليد 5 أحداث عشوائية
    for (int i = 0; i < 5; i++) {
      matchEvents.add(possibleEvents[_random.nextInt(possibleEvents.length)]);
    }
  }

  // بدء المباراة
  void startMatch() {
    print("Match starting at stadium: ${_stadium.name}, Location: ${_stadium.location}");
    print("${_team1.name} (Strategy: ${_team1.strategy}) VS ${_team2.name} (Strategy: ${_team2.strategy})");

    // حساب القوى الإجمالية
    int powerTeam1 = calculateTeamPower(_team1);
    int powerTeam2 = calculateTeamPower(_team2);

    // محاكاة أحداث المباراة
    simulateMatchEvents();

    // عرض أحداث المباراة
    print("\nMatch Events:");
    for (var event in matchEvents) {
      print("- $event");
    }

    // عرض القوى النهائية
    print("\nFinal Result:");
    print("${_team1.name} Power: $powerTeam1");
    print("${_team2.name} Power: $powerTeam2");

    // تحديد الفائز
    if (powerTeam1 > powerTeam2) {
      print("Winner: ${_team1.name}");
    } else if (powerTeam2 > powerTeam1) {
      print("Winner: ${_team2.name}");
    } else {
      print("It's a Draw!");
    }
  }
}
