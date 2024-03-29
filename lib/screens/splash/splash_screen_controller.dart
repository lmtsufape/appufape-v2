import 'package:thunderapp/screens/screens_index.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';

class SplashScreenController {
  final BuildContext context;

  SplashScreenController(this.context);
  final Logger _logger = Logger('Splash screen logger');

  void initApplication() async {
    Future.delayed(const Duration(seconds: 5), () async {
      //   await configDefaultAppSettings();

      //   // ignore: use_build_context_synchronously
      Navigator.popAndPushNamed(context, Screens.home);
    });
  }

  Future configDefaultAppSettings() async {
    _logger.config('Configuring default app settings...');
    await SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    _logger.fine('Default app settings configured!');
    return;
  }
}
