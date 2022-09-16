import 'package:flutter/material.dart';
import 'package:new_app/constants.dart/first_page_consts.dart';

class FirstPageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const FirstPageAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        SizedBox.fromSize(
          size: preferredSize,
          child: LayoutBuilder(builder: (context, constraint) {
            final width = constraint.maxWidth * 8;
            return ClipRect(
              child: OverflowBox(
                maxHeight: double.infinity,
                maxWidth: double.infinity,
                child: SizedBox(
                  width: width,
                  height: width,
                  child: Padding(
                    padding: EdgeInsets.only(
                        bottom: width / 2 - preferredSize.height / 2),
                    child: const DecoratedBox(
                      decoration: BoxDecoration(
                          color: FirstPageColors.firstPageAppBarColor,
                          shape: BoxShape.circle),
                    ),
                  ),
                ),
              ),
            );
          }),
        ),
        const FirstPageAppABarColumn(),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(350.0);
}

class FirstPageAppABarColumn extends StatelessWidget {
  const FirstPageAppABarColumn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        const Center(
            child: Image(
          width: 130,
          height: 90,
          image: AssetImage('assets/images/app_logo.png'),
        )),
        const SizedBox(
          height: 30,
        ),
        Align(
          alignment: Alignment.topCenter,
          child: FirstPageTexts.firstPageAppBarText,
        ),
        const SizedBox(
          height: 50,
        ),
      ],
    );
  }
}
