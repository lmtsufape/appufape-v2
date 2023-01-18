import 'package:thunderapp/assets/index.dart';
import 'package:thunderapp/components/buttons/primary_button.dart';
import 'package:thunderapp/components/utils/horizontal_spacer_box.dart';
import 'package:thunderapp/components/utils/vertical_spacer_box.dart';
import 'package:thunderapp/screens/screens_index.dart';
import 'package:thunderapp/shared/constants/app_enums.dart';
import 'package:thunderapp/shared/constants/app_number_constants.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';
import 'package:flutter/material.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kPrimaryColor,
        body: Padding(
          padding: const EdgeInsets.symmetric(
              horizontal: kDefaultPadding, vertical: kDefaultPadding + 8),
          child: Stack(
            children: [
              Column(
                children: <Widget>[
                  const VerticalSpacerBox(size: SpacerSize.huge),
                  const VerticalSpacerBox(size: SpacerSize.small),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Monte seu menu',
                      style: kTitle,
                    ),
                  ),
                  const VerticalSpacerBox(size: SpacerSize.huge),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Selecione as categorias que você deseja',
                      style: kTitle2,
                    ),
                  ),
                  const VerticalSpacerBox(size: SpacerSize.huge),
                  const VerticalSpacerBox(size: SpacerSize.huge),
                  const VerticalSpacerBox(size: SpacerSize.huge),
                  Center(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                    borderRadius: const BorderRadius.all(
                                        Radius.circular(20)),
                                    boxShadow: [
                                      BoxShadow(
                                        color: kText2.withOpacity(0.5),
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
                                            style: kTitle4,
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
                            onTap: () {},
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
                                          Assets.calendar,
                                          fit: BoxFit.cover,
                                          height: 55,
                                        )),
                                        Container(
                                          alignment: Alignment.bottomCenter,
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
                        const HorizontalSpacerBox(size: SpacerSize.medium),
                        InkWell(
                            onTap: () {},
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
                                          Assets.school,
                                          fit: BoxFit.cover,
                                          height: 55,
                                        )),
                                        Container(
                                          alignment: Alignment.bottomCenter,
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                            Assets.mail,
                                            fit: BoxFit.cover,
                                            height: 55,
                                          )),
                                          Container(
                                            alignment: Alignment.bottomCenter,
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
                          const HorizontalSpacerBox(size: SpacerSize.medium),
                          InkWell(
                              onTap: () {},
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
                                            Assets.pinDrop,
                                            fit: BoxFit.cover,
                                            height: 55,
                                          )),
                                          Container(
                                            alignment: Alignment.bottomCenter,
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
                          const HorizontalSpacerBox(size: SpacerSize.medium),
                          InkWell(
                              onTap: () {},
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
                                            Assets.qrCode,
                                            fit: BoxFit.cover,
                                            height: 55,
                                          )),
                                          Container(
                                            alignment: Alignment.bottomCenter,
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
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
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
                                            Assets.ru,
                                            fit: BoxFit.cover,
                                            height: 55,
                                          )),
                                          Container(
                                            alignment: Alignment.bottomCenter,
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
                          const HorizontalSpacerBox(size: SpacerSize.medium),
                          InkWell(
                              onTap: () {},
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
                                            Assets.alert,
                                            fit: BoxFit.cover,
                                            height: 65,
                                            width: 65,
                                          )),
                                          Container(
                                            alignment: Alignment.bottomCenter,
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
                          const HorizontalSpacerBox(size: SpacerSize.medium),
                          InkWell(
                              onTap: () {},
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
                                            Assets.cart,
                                            fit: BoxFit.cover,
                                            height: 55,
                                          )),
                                          Container(
                                            alignment: Alignment.bottomCenter,
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
                  const VerticalSpacerBox(size: SpacerSize.medium),
                  Center(
                    child: Row(children: [
                      InkWell(
                          onTap: () {},
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
                                        Assets.help,
                                        fit: BoxFit.cover,
                                        height: 55,
                                      )),
                                      Container(
                                        alignment: Alignment.center,
                                        child: const Text(
                                          'Achados e Perdidos',
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
                          onTap: () {},
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
                                        Assets.apps,
                                        fit: BoxFit.cover,
                                        height: 55,
                                      )),
                                      Container(
                                        alignment: Alignment.bottomCenter,
                                        child: const Text(
                                          'Menu',
                                          style: kTitle4,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          )),
                      const HorizontalSpacerBox(size: SpacerSize.medium),
                    ]),
                  ),
                  const VerticalSpacerBox(size: SpacerSize.huge),
                  const VerticalSpacerBox(size: SpacerSize.huge),
                  const VerticalSpacerBox(size: SpacerSize.huge),
                  PrimaryButton(
                    text: 'Próximo',
                    onPressed: () {
                      Navigator.popAndPushNamed(context, Screens.home);
                    },
                    color: kBack1,
                  )
                ],
              ),
            ],
          ),
        ));
  }
}
