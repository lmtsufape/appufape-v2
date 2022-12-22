import 'package:flutter/material.dart';
import 'package:appufape/assets/index.dart';
import 'package:appufape/components/utils/horizontal_spacer_box.dart';
import 'package:appufape/components/utils/vertical_spacer_box.dart';
import 'package:appufape/screens/home/home_screen_controller.dart';
import 'package:appufape/screens/screens_index.dart';
import 'package:appufape/shared/constants/app_enums.dart';
import 'package:appufape/shared/constants/style_constants.dart';
import 'package:provider/provider.dart';

class MapaPage extends StatefulWidget {
  const MapaPage({Key? key}) : super(key: key);

  @override
  State<MapaPage> createState() => _MapaPageState();
}

class _MapaPageState extends State<MapaPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: (_) => HomeScreenController(),
      builder: (context, child) => Consumer<HomeScreenController>(
        builder: ((context, controller, child) => Scaffold(
              body: Container(
                color: kOnSurfaceColor,
                width: size.width,
                padding: const EdgeInsets.all(17),
                child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const VerticalSpacerBox(size: SpacerSize.large),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('MAPA', style: kTitle),
                      ),
                      const VerticalSpacerBox(size: SpacerSize.large),
                      const Padding(
                        padding: EdgeInsets.all(5.0),
                        child: TextField(
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              hintText: 'Faça sua busca',
                              contentPadding: EdgeInsets.symmetric(
                                  vertical: 15, horizontal: 15),
                              isDense: true,
                              prefixIcon: Icon(
                                Icons.search,
                                color: kText,
                                size: 25,
                              ),
                            )),
                      ),
                      const VerticalSpacerBox(size: SpacerSize.large),
                      InkWell(
                        child: Container(
                          width: 440,
                          height: 780,
                          decoration: BoxDecoration(
                            color: kTextButtonColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(45)),
                            boxShadow: [
                              BoxShadow(
                                color: kTextButtonColor.withOpacity(0.5),
                                spreadRadius: 0,
                                blurRadius: 3,
                                offset: const Offset(
                                    0, 0), // changes position of shadow
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
                                      scale: 0.78,
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
            )),
      ),
    );
  }
}
