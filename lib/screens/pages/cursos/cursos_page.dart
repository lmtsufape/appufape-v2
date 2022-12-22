import 'package:flutter/material.dart';
import 'package:appufape/components/utils/horizontal_spacer_box.dart';
import 'package:appufape/components/utils/vertical_spacer_box.dart';
import 'package:appufape/screens/home/home_screen_controller.dart';
import 'package:appufape/shared/constants/app_enums.dart';
import 'package:appufape/shared/constants/style_constants.dart';
import 'package:provider/provider.dart';

class CursosPage extends StatefulWidget {
  const CursosPage({Key? key}) : super(key: key);

  @override
  State<CursosPage> createState() => _CursosPageState();
}

class _CursosPageState extends State<CursosPage> {
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
                child: SingleChildScrollView(
                  child: Column(
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      const VerticalSpacerBox(size: SpacerSize.large),
                      const Padding(
                        padding: EdgeInsets.all(10.0),
                        child: Text('CURSOS', style: kTitle),
                      ),
                      const VerticalSpacerBox(size: SpacerSize.large),
                      const VerticalSpacerBox(size: SpacerSize.large),
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('Cursos',
                            style: TextStyle(
                                fontSize: 21,
                                color: kText,
                                fontWeight: FontWeight.bold)),
                      ),
                      const VerticalSpacerBox(size: SpacerSize.large),
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 440,
                              height: 115,
                              decoration: BoxDecoration(
                                color: kTextButtonColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
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
                              child: Row(
                                children: const [
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.large),
                                  Text(
                                    'Agronomia',
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                      const VerticalSpacerBox(size: SpacerSize.medium),
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 440,
                              height: 115,
                              decoration: BoxDecoration(
                                color: kTextButtonColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
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
                              child: Row(
                                children: const [
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.small),
                                  Text(
                                    'Ciência da Computação',
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                      const VerticalSpacerBox(size: SpacerSize.medium),
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 440,
                              height: 115,
                              decoration: BoxDecoration(
                                color: kTextButtonColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
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
                              child: Row(
                                children: const [
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  Text(
                                    'Engenharia de Alimentos',
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                      const VerticalSpacerBox(size: SpacerSize.medium),
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 440,
                              height: 115,
                              decoration: BoxDecoration(
                                color: kTextButtonColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
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
                              child: Row(
                                children: const [
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.small),
                                  Text(
                                    'Medicina Veterinária',
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                      const VerticalSpacerBox(size: SpacerSize.medium),
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 440,
                              height: 115,
                              decoration: BoxDecoration(
                                color: kTextButtonColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
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
                              child: Row(
                                children: const [
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  Text(
                                    'Letras',
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                      const VerticalSpacerBox(size: SpacerSize.medium),
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 440,
                              height: 115,
                              decoration: BoxDecoration(
                                color: kTextButtonColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
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
                              child: Row(
                                children: const [
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  HorizontalSpacerBox(size: SpacerSize.huge),
                                  Text(
                                    'Pedagogia',
                                    style: TextStyle(
                                        fontSize: 23,
                                        fontWeight: FontWeight.bold),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                      const VerticalSpacerBox(size: SpacerSize.huge),
                      const VerticalSpacerBox(size: SpacerSize.huge),
                      const VerticalSpacerBox(size: SpacerSize.huge),
                    ],
                  ),
                ),
              ),
            )),
      ),
    );
  }
}
