import 'package:flutter/material.dart';

class PasswordForm extends StatelessWidget {
  const PasswordForm({super.key, required this.onChanged});
  final Function(String) onChanged;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Password',
        labelStyle: TextStyle(),
      ),
      onChanged: onChanged,
      obscureText: true,
    );
  }
}
