import 'package:flutter/material.dart';
import 'package:new_app/core/first_page/first_page_appbar_view.dart';
import 'package:new_app/core/first_page/first_page_body.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: FirstPageAppBar(),
      body: FirstPageBody(),
    );
  }
}
