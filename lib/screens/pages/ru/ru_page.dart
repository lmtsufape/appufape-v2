import 'package:flutter/material.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class RuPage extends StatefulWidget {
  const RuPage({super.key});

  @override
  State<RuPage> createState() => _RuPageState();
}

class _RuPageState extends State<RuPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOnSurfaceColor,
      appBar:  AppBar(
        title: const Text('Restaurante Universitário', style: kTitle22),
        centerTitle: true,
         backgroundColor: kBack1,
      ),
    );
  }
}