import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:appufapev2/constants/constants.dart';

class NumberFormField extends StatelessWidget {
  final String label;

  const NumberFormField({Key? key, required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: kLargeHeight,
      child: TextFormField(
        style: const TextStyle(color: kDetailColor),
        keyboardType: TextInputType.number,
        inputFormatters: [FilteringTextInputFormatter.digitsOnly],
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: const BorderSide(
              color: kDetailColor,
              width: 1,
            ),
          ),
        ),
      ),
    );
  }
}
