import 'package:flutter/material.dart';

class EmailForm extends StatelessWidget {
  const EmailForm({super.key, required this.onChanged});
  final Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Email',
        labelStyle: TextStyle(),
      ),
      onChanged: onChanged,
    );
  }
}
