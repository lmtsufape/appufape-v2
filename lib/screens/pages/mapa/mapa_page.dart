import 'package:flutter/material.dart';
import 'package:thunderapp/assets/index.dart';
import 'package:thunderapp/components/utils/vertical_spacer_box.dart';
import 'package:thunderapp/screens/home/home_screen_controller.dart';
import 'package:thunderapp/shared/constants/app_enums.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';
import 'package:provider/provider.dart';

class MapaPage extends StatelessWidget {
  const MapaPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Mapa', style: kTitle22),
        toolbarOpacity: 0,
        centerTitle: true,
        backgroundColor: kBack1,
      ),
      body: Container(
        color: kOnSurfaceColor,
        width: size.width,
        padding: const EdgeInsets.all(17),
        child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const VerticalSpacerBox(size: SpacerSize.large),
              const VerticalSpacerBox(size: SpacerSize.large),
              InkWell(
                child: Container(
                  width: 430,
                  height: 685,
                  decoration: BoxDecoration(
                    color: kTextButtonColor,
                    borderRadius: const BorderRadius.all(Radius.circular(45)),
                    boxShadow: [
                      BoxShadow(
                        color: kTextButtonColor.withOpacity(0.5),
                        spreadRadius: 0,
                        blurRadius: 3,
                        offset:
                            const Offset(0, 0), // changes position of shadow
                      ),
                    ],
                  ),
                  child: Center(
                    child: Wrap(
                      children: [
                        Row(
                          children: [
                            Center(
                                child: Image.asset(
                              Assets.mapa,
                              scale: 0.8,
                            )),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
                onTap: () {},
              ),
              const VerticalSpacerBox(size: SpacerSize.large),
            ]),
      ),
    );
  }
}
