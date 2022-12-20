import 'package:appufape/components/buttons/primary_button.dart';
import 'package:appufape/screens/screens_index.dart';
import 'package:appufape/shared/constants/app_number_constants.dart';
import 'package:appufape/shared/constants/style_constants.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding + 8),
          child: Stack(
            children: [
              Column(
                children: <Widget>[
                  const Spacer(),
                  const Expanded(
                    flex: 2,
                    child: Center(
                      child: Text(
                        'Bem-vindo ao App UFAPE',
                        style: kTitle,
                      ),
                    ),
                  ),
                  const Spacer(),
                  PrimaryButton(
                    text: 'Começar',
                    onPressed: () {
                      Navigator.popAndPushNamed(context, Screens.home);
                    },
                    color: kTextButtonColor,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
