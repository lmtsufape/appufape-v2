import 'package:flutter/material.dart';
import 'package:thunderapp/shared/components/BottomNavigation.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class CalendarioPage extends StatelessWidget {
  const CalendarioPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
     int selectedIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Calendário',
          style: kTitle2,
        ),
        centerTitle: true,
        toolbarOpacity: 0,
        actions: [
          IconButton(
            icon: const Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        backgroundColor: kOnSurfaceColor,
      ),
      backgroundColor: kOnSurfaceColor,
      bottomNavigationBar: BottomNavigation(
                    selectedIndex: selectedIndex,
                  ),
      body: const Center(
        child: Text('Calendário'),
      ),
    );
  }
}
