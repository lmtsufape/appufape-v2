import 'package:flutter/cupertino.dart';
import 'package:url_launcher/url_launcher.dart';


class LinkExterno extends StatelessWidget{
  const LinkExterno({super.key});

static launchURL(link) async {
    final url = link;
    // ignore: deprecated_member_use
    if (await canLaunch(url)) {
      // ignore: deprecated_member_use
      await launch(url);
    } else {
      throw 'Não foi possível abrir o site: $url';
    }
  }
  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }

}