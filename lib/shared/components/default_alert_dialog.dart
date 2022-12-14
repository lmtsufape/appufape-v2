import 'package:flutter/material.dart';
import 'package:appufape/components/buttons/custom_text_button.dart';
import 'package:appufape/components/buttons/primary_button.dart';
import 'package:appufape/shared/constants/style_constants.dart';

class DefaultAlertDialog extends StatelessWidget {
  const DefaultAlertDialog(
      {Key? key,
      required this.title,
      required this.body,
      required this.cancelText,
      required this.onConfirm,
      required this.confirmText})
      : super(key: key);
  final String title;
  final String body;
  final String cancelText;
  final String confirmText;
  final VoidCallback onConfirm;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return AlertDialog(
      backgroundColor: Theme.of(context).cardColor,
      title: Text(
        title,
        style: kTitle9,
      ),
      content: Text(
        body,
        style: kTitle8,
      ),
      actions: [
        CustomTextButton(
            title: cancelText, onPressed: (() => Navigator.pop(context))),
        SizedBox(
          width: size.width * 0.3,
          child: PrimaryButton(
              text: confirmText, onPressed: onConfirm, color: kDetailColor),
        )
      ],
    );
  }
}
