import 'package:appufape/shared/constants/style_constants.dart';
import 'package:flutter/material.dart';

class AuthFormField3 extends StatefulWidget {
  final String label;
  final bool isPassword;
  final TextInputType inputType;
  final Function(String) onChanged;

  const AuthFormField3({
    Key? key,
    required this.label,
    required this.isPassword,
    required this.inputType,
    required this.onChanged,
  }) : super(key: key);

  @override
  State<AuthFormField3> createState() => _AuthFormField3State();
}

class _AuthFormField3State extends State<AuthFormField3> {
  bool showPassword = true;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.06,
      width: size.width * 0.65,
      child: TextFormField(
        onChanged: widget.onChanged,
        style: const TextStyle(color: kSecondaryColor),
        obscureText: widget.isPassword ? showPassword : false,
        keyboardType: widget.inputType,
        decoration: InputDecoration(
          suffixIcon: widget.isPassword
              ? InkWell(
                  onTap: () {
                    setState(() {
                      showPassword = !showPassword;
                    });
                  },
                  child: Icon(
                      showPassword ? Icons.visibility : Icons.visibility_off,
                      color: kDetailColor))
              : null,
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
