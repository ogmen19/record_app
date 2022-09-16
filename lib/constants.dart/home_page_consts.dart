import 'package:flutter/material.dart';
import 'package:new_app/constants.dart/main_theme.dart';

const double defaultExpAdd = 50;

class HomePageColors {
  static const bottomNavigationSelectedColor = mainThemeColor1;
  static const homePageAppBarColor = mainThemeColor2;
  static const expBarEmptyColor = mainThemeColor1;
  static const expBarFilledColor = Colors.green;
  static const bodyButtonColor = Color.fromARGB(255, 19, 66, 143);
  static const levelUpTextColor = Color.fromARGB(255, 242, 218, 6);
}

class HomePageIcons {
  static const Icon expBarIcon = Icon(Icons.leaderboard);
  static const Icon bodyButtonIcon = Icon(Icons.cookie);
}
