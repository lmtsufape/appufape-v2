import 'package:flutter/material.dart';

class GeneralLoader extends StatelessWidget {
  const GeneralLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * 0.2,
      width: size.width * 0.2,
      child: const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }
}
