import 'package:flutter/material.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class SaibaMaisBcc extends StatelessWidget {
  const SaibaMaisBcc({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kPrimaryColor,
      appBar:  AppBar(
        title: const Text('Ciência da computação', style: kTitle22),
        centerTitle: true,
         backgroundColor: kBack1,
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            Row(
              children: [
                Column(children: [],)
              ],
            ),
            Text("teste para pagina de bcc", style: TextStyle(
              fontFamily: "Quicksand",
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),)
          ],
        ),
      ),
    );
  }
}