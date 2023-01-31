import 'package:flutter/material.dart';
import 'package:thunderapp/shared/components/BottomNavigation.dart';
import '../../../../shared/constants/app_number_constants.dart';
import '../../../../shared/constants/style_constants.dart';

class TecnicosPage extends StatelessWidget {
  const TecnicosPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Técnico administrativos',
          style: kTitle22,
        ),
        centerTitle: true,
        toolbarOpacity: 0,
        backgroundColor: kBack1,
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: selectedIndex,
      ),
      backgroundColor: kOnSurfaceColor,
      body: const Padding(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Lista de nomes e e-mails de técnicos-administrativos da UFAPE',
              textAlign: TextAlign.center,
              style: kTitle55,
            )),
      ),
    );
  }
}
