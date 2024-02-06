import 'package:flutter/material.dart';
import 'package:thunderapp/components/buttons/custom_text_button.dart';
import 'package:thunderapp/components/buttons/primary_button.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class DefaultAlertDialog extends StatelessWidget {
  const DefaultAlertDialog(
      {super.key,
      required this.title,
      required this.body,
      required this.cancelText,
      required this.onConfirm,
      required this.confirmText});
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
          height: size.height * 0.04,
          width: size.width * 0.23,
          child: PrimaryButton(
              text: confirmText, onPressed: onConfirm, color: kDetailColor),
        )
      ],
    );
  }
}
