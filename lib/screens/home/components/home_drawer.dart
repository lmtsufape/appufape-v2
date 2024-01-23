import 'package:flutter/material.dart';

import '../../../shared/constants/style_constants.dart';

class HomeDrawer extends StatelessWidget {
  const HomeDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: kBackgroundColor,
      child: ListView(children: <Widget>[
        ListTile(
          leading: const Icon(Icons.access_alarm, color: kOnSurfaceColor),
          textColor: kOnSurfaceColor,
          title: const Text('Notificações'),
          onTap: () {},
        ),
        ListTile(
          leading: const Icon(Icons.add_call, color: kOnSurfaceColor),
          textColor: kOnSurfaceColor,
          title: const Text('Contatos'),
          onTap: () {},
        ),
      ]),
    );
  }
}
