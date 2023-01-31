import 'package:flutter/material.dart';
import 'package:thunderapp/shared/components/BottomNavigation.dart';
import 'package:thunderapp/shared/constants/app_number_constants.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class DocentesPage extends StatelessWidget {
  const DocentesPage({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Docentes',
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
              'Lista de nomes e e-mails de docentes da UFAPE',
              style: kTitle55,
              textAlign: TextAlign.center,
            )),
      ),
    );
  }
}
