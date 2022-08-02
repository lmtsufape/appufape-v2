import 'package:flutter/material.dart';

import '../constants/constants.dart';

class ErrorDialog extends StatelessWidget {
  final String mensage;
  const ErrorDialog({Key? key, required this.mensage}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
        title: Text(
          mensage,
          style: kHomeScreen2,
        ),
        actions: [
          TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text(
                'Ok',
                style: kdrawerText,
              )),
        ]);
  }
}
