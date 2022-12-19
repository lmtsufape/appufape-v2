import 'package:flutter/material.dart';
import 'package:appufape/screens/splash/splash_screen_controller.dart';

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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            // Image.asset(Assets.logo),//* if you want to use some logo, uncomment this line and pass the path
            Text('Logo'),
            CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
