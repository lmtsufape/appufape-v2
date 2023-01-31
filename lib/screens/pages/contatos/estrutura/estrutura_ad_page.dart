import 'package:flutter/material.dart';
import 'package:thunderapp/shared/components/BottomNavigation.dart';

import '../../../../shared/constants/app_number_constants.dart';
import '../../../../shared/constants/style_constants.dart';

class EstruturaAdPage extends StatelessWidget {
  const EstruturaAdPage({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Estrutura Administrativa',
          style: kTitle22,
        ),
        centerTitle: true,
        toolbarOpacity: 0,
        backgroundColor: kBack1,
      ),
      backgroundColor: kOnSurfaceColor,
      bottomNavigationBar: BottomNavigation(
        selectedIndex: selectedIndex,
      ),
      body: const Padding(
        padding: EdgeInsets.all(kDefaultPadding),
        child: Align(
            alignment: Alignment.topCenter,
            child: Text(
              'Lista de nomes e e-mails da estrutura administrativos da UFAPE',
              textAlign: TextAlign.center,
              style: kTitle55,
            )),
      ),
    );
  }
}
