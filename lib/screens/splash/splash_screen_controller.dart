import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import 'package:logging/logging.dart';
import 'package:appufape/screens/screens_index.dart';

class SplashScreenController {
  final BuildContext context;

  SplashScreenController(this.context);
  final Logger _logger =
      Logger('Splash screen logger'); 

 

  void initApplication() async {
    

    Future.delayed(const Duration(seconds: 3), () async {
   
      await configDefaultAppSettings();
     
      // ignore: use_build_context_synchronously
      Navigator.popAndPushNamed(context, Screens.carousel);
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
