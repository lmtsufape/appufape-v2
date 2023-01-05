// ignore: file_names
import 'package:appufape/shared/constants/style_constants.dart';
import 'package:flutter/material.dart';
import '../../screens/screens_index.dart';

// ignore: must_be_immutable
class BottomNavigation extends StatelessWidget {
  late int selectedIndex;
  BottomNavigation({super.key, required this.selectedIndex});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            backgroundColor: kBack3,
            icon: Icon(
              Icons.search,
              color: kBack2,
              size: 40,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: kBack3,
            icon: Icon(
              Icons.home,
              color: kBack2,
              size: 40,
            ),
          ),
          BottomNavigationBarItem(
            backgroundColor: kBack3,
            icon: Icon(
              Icons.qr_code_scanner_outlined,
              color: kBack2,
              size: 40,
            ),
          ),
        ],
        currentIndex: selectedIndex,
        unselectedItemColor: kOnSurfaceColor,
        selectedItemColor: kOnSurfaceColor,
        backgroundColor: kBack1,
        onTap: (index) {
          selectedIndex = index;
          if (selectedIndex == 0) {
          } else if (selectedIndex == 1) {
            Navigator.pushNamed(context, Screens.home);
          } else if (selectedIndex == 2) {
            Navigator.pushNamed(context, Screens.qrcode);
          }
        });
  }
}
