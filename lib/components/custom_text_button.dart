import 'package:flutter/material.dart';

class CustomTextButton extends StatelessWidget {
  final String text;
  const CustomTextButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
        child: Text(
          text,
          style: Theme.of(context).textTheme.headline5,
        ));
  }
}
