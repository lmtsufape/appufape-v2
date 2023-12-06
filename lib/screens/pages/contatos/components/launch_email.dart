import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Email extends StatelessWidget {
  const Email({super.key, required this.email,});
  final Email email;
 
    static launchEmail(email) async {
    final Uri emailLaunchUri = Uri(
      scheme: 'mailto',
      path: email,
    );

    // ignore: deprecated_member_use
    if (await launchUrl(emailLaunchUri)) {
      // ignore: deprecated_member_use
      await launch(emailLaunchUri.toString());
    } else {
      throw 'Não foi possível abrir o cliente de e-mail.';
    }
  }
  
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}