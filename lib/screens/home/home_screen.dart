import 'package:provider/provider.dart';
import 'package:thunderapp/assets/index.dart';
import 'package:thunderapp/components/utils/horizontal_spacer_box.dart';
import 'package:thunderapp/components/utils/vertical_spacer_box.dart';
import 'package:thunderapp/screens/home/home_screen_controller.dart';
import 'package:thunderapp/screens/screens_index.dart';
import 'package:thunderapp/shared/components/BottomNavigation.dart';
import 'package:thunderapp/shared/constants/app_enums.dart';
import 'package:flutter/material.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    Size size = MediaQuery.of(context).size;

    return ChangeNotifierProvider(
        create: (_) => HomeScreenController(),
        builder: (context, child) => Consumer<HomeScreenController>(
            builder: ((context, controller, child) => Scaffold(
                  appBar: AppBar(
                    title: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset(Assets.logoAppBar,
                            alignment: Alignment.center,
                            fit: BoxFit.cover,
                            height: 65),
                        Image.asset(Assets.textoUfape,
                            alignment: Alignment.center,
                            fit: BoxFit.cover,
                            height: 45),
                      ],
                    ),
                    centerTitle: true,
                    toolbarOpacity: 0,
                    backgroundColor: kBack1,
                    toolbarHeight: 80,
                  ),
                  bottomNavigationBar: BottomNavigation(
                    selectedIndex: selectedIndex,
                  ),
                  body: Container(
                    color: kOnSurfaceColor,
                    width: size.width,
                    padding: const EdgeInsets.all(10),
                    child: Column(
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        // const Padding(
                        //   padding: EdgeInsets.all(5.0),
                        //   child: TextField(
                        //       keyboardType: TextInputType.text,
                        //       decoration: InputDecoration(
                        //         border: OutlineInputBorder(
                        //             borderRadius:
                        //                 BorderRadius.all(Radius.circular(30))),
                        //         hintText: 'Faça sua busca',
                        //         contentPadding: EdgeInsets.symmetric(
                        //             vertical: 15, horizontal: 15),
                        //         isDense: true,
                        //         prefixIcon: Icon(
                        //           Icons.search,
                        //           color: kText,
                        //           size: 25,
                        //         ),
                        //       )),
                        // ),

                        const VerticalSpacerBox(size: SpacerSize.small),
                        const Align(
                          alignment: Alignment.bottomLeft,
                          child: Text('Notícias',
                              style: TextStyle(
                                  fontSize: 25,
                                  color: kText2,
                                  fontWeight: FontWeight.w500)),
                        ),
                        const VerticalSpacerBox(size: SpacerSize.medium),
                        InkWell(
                          child: Container(
                            width: 440,
                            height: 220,
                            decoration: BoxDecoration(
                              color: kTextButtonColor,
                              borderRadius:
                                  const BorderRadius.all(Radius.circular(40)),
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
                                // ignore: prefer_const_literals_to_create_immutables
                                children: [
                                  // Image.asset(
                                  //   Assets.exemplo,
                                  //   scale: 0.5,
                                  //   fit: BoxFit.cover,
                                  //   height: 245,
                                  // ),
                                  // Container(
                                  //   alignment: Alignment.center,
                                  //   child: const Text(
                                  //     'Lorem ipsum dolor sit amet, consectetur adipiscing elit. In ullamcorper orci cras.',
                                  //     style: kTitle4,
                                  //   ),
                                  // ),
                                ],
                              ),
                            ),
                          ),
                          onTap: () {
                            Navigator.popAndPushNamed(
                                context, Screens.noticias);
                          },
                        ),
                        const VerticalSpacerBox(size: SpacerSize.medium),
                        const Align(
                          alignment: Alignment.bottomRight,
                          child: Text('Ver mais notícias',
                              style: TextStyle(
                                  fontSize: 21,
                                  color: kBack1,
                                  fontWeight: FontWeight.w500)),
                        ),
                        const VerticalSpacerBox(size: SpacerSize.medium),
                        Center(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              InkWell(
                                  onTap: () {
                                    Navigator.popAndPushNamed(
                                        context, Screens.editais);
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          color: kBack3,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: kText2.withOpacity(0.5),
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
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: const Text(
                                                  'Editais',
                                                  style: kTitle4,
                                                  strutStyle: StrutStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.bold),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              const HorizontalSpacerBox(size: SpacerSize.large),
                              InkWell(
                                  onTap: () {
                                    Navigator.popAndPushNamed(
                                        context, Screens.calendario);
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          color: kBack3,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: kText2.withOpacity(0.5),
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
                                                alignment:
                                                    Alignment.bottomCenter,
                                                child: const Text(
                                                  'Calendário',
                                                  style: kTitle4,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  )),
                              const HorizontalSpacerBox(size: SpacerSize.large),
                              InkWell(
                                  onTap: () {
                                    Navigator.popAndPushNamed(
                                        context, Screens.cursos);
                                  },
                                  child: Row(
                                    children: [
                                      Container(
                                        width: 120,
                                        height: 120,
                                        decoration: BoxDecoration(
                                          color: kBack3,
                                          borderRadius: const BorderRadius.all(
                                              Radius.circular(20)),
                                          boxShadow: [
                                            BoxShadow(
                                              color: kText2.withOpacity(0.5),
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
                                                alignment: Alignment.center,
                                                child: const Text(
                                                  'Cursos',
                                                  style: kTitle4,
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
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                    onTap: () {
                                      Navigator.popAndPushNamed(
                                          context, Screens.contatos);
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            color: kBack3,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(20)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: kText2.withOpacity(0.5),
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
                                                  Assets.mail,
                                                  fit: BoxFit.cover,
                                                  height: 55,
                                                )),
                                                Container(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: const Text(
                                                    'Contatos',
                                                    style: kTitle4,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                const HorizontalSpacerBox(
                                    size: SpacerSize.large),
                                InkWell(
                                    onTap: () {
                                      Navigator.popAndPushNamed(
                                          context, Screens.mapa);
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            color: kBack3,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(20)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: kText2.withOpacity(0.5),
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
                                                  Assets.pinDrop,
                                                  fit: BoxFit.cover,
                                                  height: 55,
                                                )),
                                                Container(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: const Text(
                                                    'Mapa',
                                                    style: kTitle4,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                const HorizontalSpacerBox(
                                    size: SpacerSize.large),
                                InkWell(
                                    onTap: () {
                                      Navigator.popAndPushNamed(
                                          context, Screens.qrcode);
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            color: kBack3,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(20)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: kText2.withOpacity(0.5),
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
                                                  Assets.qrCode,
                                                  fit: BoxFit.cover,
                                                  height: 55,
                                                )),
                                                Container(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: const Text(
                                                    'Onde estou',
                                                    style: kTitle4,
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
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                InkWell(
                                    onTap: () {},
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            color: kBack3,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(20)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: kText2.withOpacity(0.5),
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
                                                  Assets.ru,
                                                  fit: BoxFit.cover,
                                                  height: 55,
                                                )),
                                                Container(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: const Text(
                                                    'RU',
                                                    style: kTitle4,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                const HorizontalSpacerBox(
                                    size: SpacerSize.large),
                                InkWell(
                                    onTap: () {
                                      Navigator.popAndPushNamed(
                                          context, Screens.noticias);
                                    },
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            color: kBack3,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(20)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: kText2.withOpacity(0.5),
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
                                                  Assets.alert,
                                                  fit: BoxFit.cover,
                                                  height: 65,
                                                  width: 65,
                                                )),
                                                Container(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: const Text(
                                                    'Notícias',
                                                    style: kTitle4,
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    )),
                                const HorizontalSpacerBox(
                                    size: SpacerSize.large),
                                InkWell(
                                    onTap: () {},
                                    child: Row(
                                      children: [
                                        Container(
                                          width: 120,
                                          height: 120,
                                          decoration: BoxDecoration(
                                            color: kBack3,
                                            borderRadius:
                                                const BorderRadius.all(
                                                    Radius.circular(20)),
                                            boxShadow: [
                                              BoxShadow(
                                                color: kText2.withOpacity(0.5),
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
                                                  Assets.cart,
                                                  fit: BoxFit.cover,
                                                  height: 55,
                                                )),
                                                Container(
                                                  alignment:
                                                      Alignment.bottomCenter,
                                                  child: const Text(
                                                    'Lanches',
                                                    style: kTitle4,
                                                  ),
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
                ))));
  }
}
