import 'package:flutter/material.dart';
import 'package:new_app/constants.dart/home_page_consts.dart';
import 'package:new_app/core/home_page/home_page_appbar_view.dart';
import 'package:new_app/core/home_page/home_page_body_view.dart';

import '../../constants.dart/main_theme.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: HomePageAppBar(),
      backgroundColor: mainThemeColor1,
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 2,
        selectedItemColor: HomePageColors.bottomNavigationSelectedColor,
        items: [
          bottomNavigationItemCreate(
              BottomNavigationIcons.bottomNavigationIcon_1, say),
          bottomNavigationItemCreate(
              BottomNavigationIcons.bottomNavigationIcon_2, say),
          bottomNavigationItemCreate(
              BottomNavigationIcons.bottomNavigationIcon_3, say),
          bottomNavigationItemCreate(
              BottomNavigationIcons.bottomNavigationIcon_4, say),
          bottomNavigationItemCreate(
              BottomNavigationIcons.bottomNavigationIcon_5, say),
        ],
      ),
      body: const HomePageBody(),
    );
  }

  BottomNavigationBarItem bottomNavigationItemCreate(
      Icon icon, void Function() f) {
    return BottomNavigationBarItem(
        label: '', icon: IconButton(onPressed: f, icon: icon));
  }
}

void say() {}
