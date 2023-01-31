import 'package:thunderapp/shared/components/BottomNavigation.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';
import 'package:flutter/material.dart';

class NoticiasPage extends StatelessWidget {
  const NoticiasPage({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Noticías', style: kTitle22),
          toolbarOpacity: 0,
          centerTitle: true,
          backgroundColor: kBack1,
        ),
        bottomNavigationBar: BottomNavigation(
          selectedIndex: selectedIndex,
        ),
        backgroundColor: kOnSurfaceColor,
        body: const Center(
          child: Padding(padding: EdgeInsets.all(20), child: Text('Noticias')),
        ));
  }
}
