import 'package:appufape/assets/index.dart';
import 'package:appufape/shared/constants/style_constants.dart';
import 'package:flutter/material.dart';
import 'package:appufape/screens/splash/splash_screen_controller.dart';
import '../../assets/index.dart';
import '../../components/utils/vertical_spacer_box.dart';
import '../../shared/constants/app_enums.dart';
import '../../shared/constants/app_number_constants.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late final SplashScreenController _controller;
  @override
  void initState() {
    super.initState();
    _controller = SplashScreenController(context);
    WidgetsBinding.instance.addPostFrameCallback((_) {
      _controller.initApplication();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            const CircularProgressIndicator(color: kTextSign),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(kDefaultPadding),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    'Desenvolvido por:',
                    textAlign: TextAlign.center,
                    style: kBody2.copyWith(fontFamily: 'Roboto'),
                  ),
                  const VerticalSpacerBox(size: SpacerSize.small),
                  Center(
                      child: Image.asset(
                    Assets.logo,
                    scale: 1.1,
                  )),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
