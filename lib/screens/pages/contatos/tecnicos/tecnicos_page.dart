import 'package:flutter/material.dart';
import 'package:thunderapp/shared/components/BottomNavigation.dart';
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
      bottomNavigationBar: BottomNavigation(
        selectedIndex: selectedIndex,
      ),
      backgroundColor: kOnSurfaceColor,
      body: const Center(
        child: Text('Técnico administrativos'),
      ),
    );
  }
}
