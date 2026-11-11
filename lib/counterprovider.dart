import 'package:flutter/material.dart';

class Counterprovider extends ChangeNotifier {
  int team1 = 0;
  int team2 = 0;

  void increaseCount1team1() {
    team1 += 1;
    notifyListeners();
  }

  void increaseCount2team1() {
    team1 += 2;
    notifyListeners();
  }

  void increaseCount3team1() {
    team1 += 3;
    notifyListeners();
  }

  void increaseCount1team2() {
    team2 += 1;
    notifyListeners();
  }

  void increaseCount2team2() {
    team2 += 2;
    notifyListeners();
  }

  void increaseCount3team2() {
    team2 += 3;
    notifyListeners();
  }
  // void decreaseCounter(){
  //   count--;
  //   notifyListeners();
  // }

  void resetcount() {
    team1 = 0;
    team2 = 0;
    notifyListeners();
  }
}
