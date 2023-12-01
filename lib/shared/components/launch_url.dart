import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class LinkExterno extends StatelessWidget {
  const LinkExterno({super.key});
  final String url = 'https://flutter.dev';

  Future<void> launchUrl() async {
    // ignore: deprecated_member_use
    if (await canLaunch(url.toString())) {
      // ignore: deprecated_member_use
      await launch(url.toString());
    } else {
      throw Exception('Could not launch $url');
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      // ignore: deprecated_member_use
      onPressed: () => launch(url),
      child: const Text('Launch URL'),
    );
  }
}