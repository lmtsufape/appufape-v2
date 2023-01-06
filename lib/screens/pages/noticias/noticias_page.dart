import 'package:appufape/shared/constants/style_constants.dart';
import 'package:flutter/material.dart';

class NoticiasPage extends StatefulWidget {
  const NoticiasPage({super.key});

  @override
  State<NoticiasPage> createState() => _NoticiasPageState();
}

class _NoticiasPageState extends State<NoticiasPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Noticías', style: kTitle2),
          toolbarOpacity: 0,
          backgroundColor: kOnSurfaceColor,
        ),
        body: const Padding(
          padding: EdgeInsets.all(20),
        ));
  }
}
