import 'package:flutter/material.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({Key? key, required this.text, required this.onPressed})
      : super(key: key);
  final String text;
  final Function onPressed;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.6,
      height: MediaQuery.of(context).size.height * 0.055,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(kPrimaryColor),
            shape: MaterialStateProperty.all(RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(25)))),
        onPressed: () => onPressed(),
        child: Text(text, style: kcaption2),
      ),
    );
  }
}
