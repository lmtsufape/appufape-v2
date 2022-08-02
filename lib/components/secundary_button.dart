import 'package:flutter/material.dart';

class SecundaryButton extends StatelessWidget {
  final String text;
  final Function() onPressed;
  const SecundaryButton(
      {Key? key, required this.text, required this.onPressed, Text? child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.06,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
        style: Theme.of(context).elevatedButtonTheme.style,
      ),
    );
  }
}
