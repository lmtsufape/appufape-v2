import 'package:flutter/material.dart';
import 'package:appufapev2/constants/constants.dart';

class PrimaryButton extends StatelessWidget {
  final String text;
  final Icon icon;
  final Color color;
  final Function() onPressed;
  const PrimaryButton(
      {Key? key,
      required this.icon,
      required this.text,
      required this.onPressed,
      required this.color,
      Text? child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.06,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(text),
        style: ElevatedButton.styleFrom(
          alignment: AlignmentDirectional.centerStart,
          primary: color,
          textStyle: const TextStyle(
            color: kLightColor,
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
    );
  }
}
