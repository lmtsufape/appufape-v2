import 'package:flutter/material.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class SaibaMaisAgronomia extends StatelessWidget {
  const SaibaMaisAgronomia({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: kPrimaryColor,
      appBar:  AppBar(
        title: const Text('Agronomia', style: kTitle22),
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
            Text("teste para ver se esta tudo ok", style: TextStyle(
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