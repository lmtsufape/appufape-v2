import 'package:device_preview/device_preview.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:logging/logging.dart';
import 'package:provider/provider.dart';
import 'package:appufape/app.dart';
import 'package:appufape/screens/home/home_screen_controller.dart';
import 'package:appufape/shared/core/selected_item.dart';

main() {
  WidgetsFlutterBinding.ensureInitialized();
  Logger.root.level = Level.ALL; // defaults to Level.INFO
  Logger.root.onRecord.listen((record) {
    if (kDebugMode) {
      print('${record.level.name}: ${record.time}: ${record.message}');
    }
  });
  MultiProvider(providers: [
    ChangeNotifierProvider(create: (_) => HomeScreenController()),
    ChangeNotifierProvider(create: (_) => SelectedItem())
  ], child: const App());

  runApp(DevicePreview(enabled: true, builder: (context) => const App()));
}
