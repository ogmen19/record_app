import 'package:flutter/material.dart';
import 'package:new_app/constants.dart/first_page_consts.dart';
import 'package:new_app/core/home_page/home_page_view.dart';

class FirstPageBody extends StatelessWidget {
  const FirstPageBody({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        const SizedBox(
          height: 80,
        ),
        Center(
          child: SizedBox(
            height: 50,
            width: 250,
            child: ElevatedButton.icon(
              icon: FirstPageIcons.firstPageBodyIcon_1,
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: FirstPageColors.firstPageBodyButtonColor_1,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              label: FirstPageTexts.firstPageBodyButtonText_1,
            ),
          ),
        ),
        const SizedBox(
          height: 30,
        ),
        Center(
          child: SizedBox(
            height: 50,
            width: 250,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                  primary: FirstPageColors.firstPageBodyButtonColor_2,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(25))),
              child: FirstPageTexts.firstPageBodyButtonText_2,
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        TextButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const HomePage()));
            },
            child: FirstPageTexts.firstPageBodyTextButton_text)
      ],
    );
  }
}
