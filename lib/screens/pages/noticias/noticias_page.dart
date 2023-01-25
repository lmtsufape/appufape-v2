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
          title: const Text('Noticías', style: kTitle2),
          toolbarOpacity: 0,
          centerTitle: true,
          backgroundColor: kOnSurfaceColor,
          automaticallyImplyLeading: true,
        ),
        bottomNavigationBar: BottomNavigation(
          selectedIndex: selectedIndex,
        ),
        backgroundColor: kOnSurfaceColor,
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('Voltar'))));
  }
}
