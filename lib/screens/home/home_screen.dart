import 'package:appufape/assets/index.dart';
import 'package:appufape/components/utils/horizontal_spacer_box.dart';
import 'package:appufape/components/utils/vertical_spacer_box.dart';
import 'package:appufape/screens/home/home_screen_controller.dart';
import 'package:appufape/screens/screens_index.dart';
import 'package:appufape/shared/constants/app_enums.dart';
import 'package:flutter/material.dart';
import 'package:appufape/shared/constants/style_constants.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

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
                      child: Text('APP UFAPE', style: kTitle),
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
                    const Align(
                      alignment: Alignment.bottomLeft,
                      child: Text('Notícias',
                          style: TextStyle(
                              fontSize: 21,
                              color: kText,
                              fontWeight: FontWeight.bold)),
                    ),
                    const VerticalSpacerBox(size: SpacerSize.large),
                    InkWell(
                      child: Container(
                        width: 440,
                        height: 250,
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
                                children: const [],
                              ),
                            ],
                          ),
                        ),
                      ),
                      onTap: () {},
                    ),
                    const VerticalSpacerBox(size: SpacerSize.large),
                    const Align(
                      alignment: Alignment.bottomRight,
                      child: Text('Ver mais notícias',
                          style: TextStyle(
                              fontSize: 21,
                              color: kText,
                              fontWeight: FontWeight.bold)),
                    ),
                    const Spacer(),
                    Center(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, Screens.editais);
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 138,
                                    height: 138,
                                    decoration: BoxDecoration(
                                      color: kTextButtonColor,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                              kTextButtonColor.withOpacity(0.5),
                                          spreadRadius: 0,
                                          blurRadius: 3,
                                          offset: const Offset(0,
                                              0), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Wrap(
                                        children: [
                                          Center(
                                              child: Image.asset(
                                            Assets.textsnippet,
                                            fit: BoxFit.cover,
                                            height: 55,
                                          )),
                                          const VerticalSpacerBox(
                                              size: SpacerSize.small),
                                          Container(
                                            alignment: Alignment.bottomCenter,
                                            child: const Text(
                                              'Editais',
                                              strutStyle: StrutStyle(
                                                  fontSize: 20,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          const HorizontalSpacerBox(size: SpacerSize.medium),
                          InkWell(
                              onTap: () {
                                // Navigator.pushNamed(context, Screens.menu);
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 138,
                                    height: 138,
                                    decoration: BoxDecoration(
                                      color: kTextButtonColor,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                              kTextButtonColor.withOpacity(0.5),
                                          spreadRadius: 0,
                                          blurRadius: 3,
                                          offset: const Offset(0,
                                              0), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Wrap(
                                        children: [
                                          Center(
                                              child: Image.asset(
                                            Assets.calendar,
                                            fit: BoxFit.cover,
                                            height: 55,
                                          )),
                                          Container(
                                            alignment: Alignment.bottomCenter,
                                            child: const Text(
                                              'Calendário',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                          const HorizontalSpacerBox(size: SpacerSize.medium),
                          InkWell(
                              onTap: () {
                                Navigator.pushNamed(context, Screens.cursos);
                              },
                              child: Row(
                                children: [
                                  Container(
                                    width: 138,
                                    height: 138,
                                    decoration: BoxDecoration(
                                      color: kTextButtonColor,
                                      borderRadius: const BorderRadius.all(
                                          Radius.circular(20)),
                                      boxShadow: [
                                        BoxShadow(
                                          color:
                                              kTextButtonColor.withOpacity(0.5),
                                          spreadRadius: 0,
                                          blurRadius: 3,
                                          offset: const Offset(0,
                                              0), // changes position of shadow
                                        ),
                                      ],
                                    ),
                                    child: Center(
                                      child: Wrap(
                                        children: [
                                          Center(
                                              child: Image.asset(
                                            Assets.school,
                                            fit: BoxFit.cover,
                                            height: 55,
                                          )),
                                          Container(
                                            alignment: Alignment.bottomCenter,
                                            child: const Text(
                                              'Cursos',
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ),
                                ],
                              )),
                        ],
                      ),
                    ),
                    const VerticalSpacerBox(size: SpacerSize.medium),
                    Center(
                      child: Row(children: [
                        InkWell(
                            onTap: () {
                              // Navigator.pushNamed(context, Screens.menu);
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: 138,
                                  height: 138,
                                  decoration: BoxDecoration(
                                    color: kTextButtonColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            kTextButtonColor.withOpacity(0.5),
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
                                        Center(
                                            child: Image.asset(
                                          Assets.mail,
                                          fit: BoxFit.cover,
                                          height: 55,
                                        )),
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: const Text(
                                            'Contatos',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        const HorizontalSpacerBox(size: SpacerSize.medium),
                        InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, Screens.mapa);
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: 138,
                                  height: 138,
                                  decoration: BoxDecoration(
                                    color: kTextButtonColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            kTextButtonColor.withOpacity(0.5),
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
                                        Center(
                                            child: Image.asset(
                                          Assets.pinDrop,
                                          fit: BoxFit.cover,
                                          height: 55,
                                        )),
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: const Text(
                                            'Mapa',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        const HorizontalSpacerBox(size: SpacerSize.medium),
                        InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, Screens.qrcode);
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: 138,
                                  height: 138,
                                  decoration: BoxDecoration(
                                    color: kTextButtonColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            kTextButtonColor.withOpacity(0.5),
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
                                        Center(
                                            child: Image.asset(
                                          Assets.qrCode,
                                          fit: BoxFit.cover,
                                          height: 55,
                                        )),
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          child: const Text(
                                            'Onde estou',
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ))
                      ]),
                    ),
                    const VerticalSpacerBox(size: SpacerSize.medium),
                    Center(
                      child: Row(children: [
                        InkWell(
                            onTap: () {
                              // Navigator.pushNamed(context, Screens.menu);
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: 138,
                                  height: 138,
                                  decoration: BoxDecoration(
                                    color: kTextButtonColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            kTextButtonColor.withOpacity(0.5),
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
                                        // Center(
                                        //     child: Image.asset(
                                        //   Assets.mail,
                                        //   fit: BoxFit.cover,
                                        //   height: 55,
                                        // )),
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          // child: const Text(
                                          //   'Contatos',
                                          // ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        const HorizontalSpacerBox(size: SpacerSize.medium),
                        InkWell(
                            onTap: () {
                              // Navigator.pushNamed(context, Screens.menu);
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: 138,
                                  height: 138,
                                  decoration: BoxDecoration(
                                    color: kTextButtonColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            kTextButtonColor.withOpacity(0.5),
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
                                        // Center(
                                        //     child: Image.asset(
                                        //   Assets.mail,
                                        //   fit: BoxFit.cover,
                                        //   height: 55,
                                        // )),
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          // child: const Text(
                                          //   'Contatos',
                                          // ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                        const HorizontalSpacerBox(size: SpacerSize.medium),
                        InkWell(
                            onTap: () {
                              // Navigator.pushNamed(context, Screens.menu);
                            },
                            child: Row(
                              children: [
                                Container(
                                  width: 138,
                                  height: 138,
                                  decoration: BoxDecoration(
                                    color: kTextButtonColor,
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color:
                                            kTextButtonColor.withOpacity(0.5),
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
                                        // Center(
                                        //     child: Image.asset(
                                        //   Assets.mail,
                                        //   fit: BoxFit.cover,
                                        //   height: 55,
                                        // )),
                                        Container(
                                          alignment: Alignment.bottomCenter,
                                          // child: const Text(
                                          //   'Contatos',
                                          // ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            )),
                      ]),
                    ),
                  ],
                ),
              ),
            )),
      ),
    );
  }
}
