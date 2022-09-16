import 'package:flutter/material.dart';
import 'package:new_app/constants.dart/home_page_consts.dart';
import 'package:new_app/providers.dart';
import 'package:provider/provider.dart';

class HomePageBody extends StatelessWidget {
  const HomePageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Column(
            children: [
              const SizedBox(
                height: 60,
              ),
              AnimatedContainer(
                alignment: Alignment.topCenter,
                curve: Curves.fastOutSlowIn,
                duration: const Duration(seconds: 1),
                child: context.watch<LevelCounter>().isLevelUpdated
                    ? const FittedBox(
                        fit: BoxFit.contain,
                        child: Text(
                          'Level Up !!',
                          style: TextStyle(
                              color: HomePageColors.levelUpTextColor,
                              fontSize: 40),
                        ),
                      )
                    : null,
              ),
            ],
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: !context.watch<LevelCounter>().isLevelUpdated
                    ? () {
                        context.read<ExpCounter>().increment(defaultExpAdd);
                        checkLevel(context);
                      }
                    : null,
                child: Container(
                  height: 100,
                  width: 100,
                  decoration: const BoxDecoration(
                    shape: BoxShape.circle,
                    color: HomePageColors.bodyButtonColor,
                  ),
                  child: HomePageIcons.bodyButtonIcon,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                height: 30,
                width: 150,
                child: ElevatedButton(
                  onPressed: () {
                    context.read<LevelCounter>().resetLevel();
                    context.read<ExpCounter>().reset();
                  },
                  style: ElevatedButton.styleFrom(
                      primary: HomePageColors.bodyButtonColor,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(25))),
                  child: const Text('Reset Game'),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }

  void checkLevel(BuildContext context) async {
    final currentExp = context.read<ExpCounter>().count;
    if (currentExp >= 270) {
      context.read<ExpCounter>().reset();
      context.read<ExpCounter>().set(currentExp - 270);
      context.read<LevelCounter>().levelUp();
      await Future.delayed(const Duration(seconds: 1, milliseconds: 400), () {
        context.read<LevelCounter>().setUpdateFalse();
      });
    }
  }
}
