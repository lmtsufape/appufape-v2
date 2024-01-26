import 'package:flutter/material.dart';
import 'package:thunderapp/shared/components/bottom_navigation.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class HorarioOnibusPage extends StatefulWidget {
  const HorarioOnibusPage({super.key});

  @override
  State<HorarioOnibusPage> createState() => _HorarioOnibusPageState();
}

class _HorarioOnibusPageState extends State<HorarioOnibusPage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return  Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        backgroundColor: kBack1,
        title: const Center(child: Text("Orario de Onibus")),
      ),
      body: Center(child: Container(child: const Text("horarios de onibus", style: TextStyle(fontSize: 30),),)),
      bottomNavigationBar: BottomNavigation(selectedIndex: selectedIndex),
    );
  }
}