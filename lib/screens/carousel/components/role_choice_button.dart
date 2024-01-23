import 'package:flutter/material.dart';
import 'package:thunderapp/shared/constants/app_number_constants.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class RoleChoiceButton extends StatelessWidget {
  const RoleChoiceButton({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return InkWell(
        onTap: () {},
        child: Container(
          width: size.width * 0.4,
          height: size.height * 0.25,
          decoration: BoxDecoration(
              color: kPrimaryColor,
              boxShadow: const [
                BoxShadow(
                    color: Colors.white12, blurRadius: 2, offset: Offset(0, 1))
              ],
              borderRadius: BorderRadius.circular(kDefaultBorderRadius)),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Icon(
                Icons.school,
                color: kOnBackgroundColor,
                size: 84,
              ),
              Text(text, style: kcaption1.copyWith(color: kOnBackgroundColor)),
            ],
          ),
        ));
  }
}
