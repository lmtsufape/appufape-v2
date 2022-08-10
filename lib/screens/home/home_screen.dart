import 'package:flutter/material.dart';
import 'package:thunderapp/screens/home/components/home_drawer.dart';
import 'package:thunderapp/shared/constants/app_number_constants.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      drawer: const HomeDrawer(),
      body: Padding(
        padding: const EdgeInsets.symmetric(
            horizontal: kDefaultPadding - 30, vertical: kDefaultPadding - 30),
        child: Stack(children: <Widget>[
          Container(
            color: kPrimaryColor,
          )
        ]),
      ),
    );
  }
}
