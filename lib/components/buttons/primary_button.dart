import 'package:thunderapp/shared/constants/style_constants.dart';
import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    super.key,
    required this.text,
    required this.onPressed,
    required this.color,
  });
  final String text;
  final Function onPressed;
  final Color color;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.06,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(backgroundColor: color),
        onPressed: () => onPressed(),
        child: Text(
          text,
          style: kTitle3,
        ),
      ),
    );
  }
}
