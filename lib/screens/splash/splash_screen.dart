import 'package:thunderapp/assets/index.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';
import 'package:flutter/material.dart';
import 'package:thunderapp/screens/splash/splash_screen_controller.dart';
import '../../components/utils/vertical_spacer_box.dart';
import '../../shared/constants/app_enums.dart';

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
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kBack1,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Spacer(),
            Center(
                child: Image.asset(
              Assets.ufape,
              scale: 0.6,
            )),
            const VerticalSpacerBox(size: SpacerSize.large),
            const VerticalSpacerBox(size: SpacerSize.medium),
            const CircularProgressIndicator(color: kBack2),
            const Spacer(),
            Container(
              padding: const EdgeInsets.all(25),
              decoration: const BoxDecoration(color: kBack2),
              width: size.width,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
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
