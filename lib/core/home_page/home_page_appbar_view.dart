import 'package:flutter/material.dart';
import 'package:new_app/constants.dart/home_page_consts.dart';
import 'package:new_app/providers.dart';
import 'package:provider/provider.dart';

class HomePageAppBar extends AppBar {
  HomePageAppBar({Key? key})
      : super(
            key: key,
            backgroundColor: HomePageColors.homePageAppBarColor,
            flexibleSpace: Builder(builder: (context) {
              return Column(
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      HomePageIcons.expBarIcon,
                      const SizedBox(
                        width: 10,
                      ),
                      Center(
                        child: Stack(
                          children: [
                            const ExpBar(
                                width: 270,
                                color: HomePageColors.expBarEmptyColor),
                            ExpBar(
                                width: context.watch<ExpCounter>().count,
                                color: HomePageColors.expBarFilledColor),
                          ],
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text('Level ${context.watch<LevelCounter>().getLevel}')
                    ],
                  ),
                ],
              );
            }));
}

class ExpBar extends StatelessWidget {
  const ExpBar({Key? key, required this.width, required this.color})
      : super(key: key);

  final double? width;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: 15,
      child: Card(
        color: color,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),
    );
  }
}
