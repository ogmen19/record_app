import 'package:flutter/material.dart';

class ExpCounter with ChangeNotifier {
  double _count = 0;
  double get count => _count;

  void increment(double exp) {
    _count += exp;
    notifyListeners();
  }

  void reset() {
    _count = 0;
    notifyListeners();
  }

  void set(double exp) {
    _count = exp;
    notifyListeners();
  }
}

class LevelCounter with ChangeNotifier {
  int _level = 1;
  bool _isLevelUpdated = false;
  int get getLevel => _level;
  bool get isLevelUpdated => _isLevelUpdated;

  void levelUp() {
    _level++;
    _isLevelUpdated = true;
    notifyListeners();
  }

  void setUpdateFalse() {
    _isLevelUpdated = false;
    notifyListeners();
  }

  void resetLevel() {
    _level = 0;
  }
}
