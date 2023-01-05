import 'package:flutter/material.dart';
import 'package:appufape/components/utils/horizontal_spacer_box.dart';
import 'package:appufape/components/utils/vertical_spacer_box.dart';
import 'package:appufape/screens/home/home_screen_controller.dart';
import 'package:appufape/shared/constants/app_enums.dart';
import 'package:appufape/shared/constants/style_constants.dart';
import 'package:provider/provider.dart';

class EditaisPage extends StatefulWidget {
  const EditaisPage({Key? key}) : super(key: key);

  @override
  State<EditaisPage> createState() => _EditaisPageState();
}

class _EditaisPageState extends State<EditaisPage> {
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
                        child: Text('Editais', style: kTitle2),
                      ),
                      const VerticalSpacerBox(size: SpacerSize.large),
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('PIBAE',
                            style: TextStyle(
                                fontSize: 21,
                                color: kText2,
                                fontWeight: FontWeight.w500)),
                      ),
                      const VerticalSpacerBox(size: SpacerSize.large),
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 440,
                              height: 75,
                              decoration: BoxDecoration(
                                color: kBack3,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
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
                              child: Wrap(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 30.0,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Row(
                                          children: const [
                                            Text(''),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Center(
                                    child: Row(
                                      children: const [
                                        HorizontalSpacerBox(
                                            size: SpacerSize.huge),
                                        Text(
                                          'Resultado Final PIBAE-PREC-UFAPE',
                                          style: kTitle5,
                                        ),
                                      ],
                                    ),
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
                              height: 75,
                              decoration: BoxDecoration(
                                color: kBack3,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
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
                              child: Wrap(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 30.0,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Row(
                                          children: const [
                                            Text(''),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Center(
                                    child: Row(
                                      children: const [
                                        HorizontalSpacerBox(
                                            size: SpacerSize.huge),
                                        Text(
                                          'Resultado Final PIBAE-PREC-UFAPE',
                                          style: kTitle5,
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        onTap: () {},
                      ),
                      const VerticalSpacerBox(size: SpacerSize.large),
                      const Align(
                        alignment: Alignment.bottomLeft,
                        child: Text('PIBEX',
                            style: TextStyle(
                                fontSize: 21,
                                color: kText2,
                                fontWeight: FontWeight.w500)),
                      ),
                      const VerticalSpacerBox(size: SpacerSize.large),
                      const VerticalSpacerBox(size: SpacerSize.medium),
                      InkWell(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Container(
                              width: 440,
                              height: 75,
                              decoration: BoxDecoration(
                                color: kBack3,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(20)),
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
                              child: Wrap(
                                children: [
                                  Row(
                                    children: [
                                      Container(
                                        width: 30.0,
                                        decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                        ),
                                        child: Row(
                                          children: const [
                                            Text(''),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                  Center(
                                    child: Row(
                                      children: const [
                                        HorizontalSpacerBox(
                                            size: SpacerSize.huge),
                                        Text(
                                          'Edital PIBEX-UFAPE 2022',
                                          style: kTitle5,
                                        ),
                                      ],
                                    ),
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
                      const VerticalSpacerBox(size: SpacerSize.huge),
                      const VerticalSpacerBox(size: SpacerSize.huge),
                      const VerticalSpacerBox(size: SpacerSize.huge),
                      const VerticalSpacerBox(size: SpacerSize.huge),
                      const VerticalSpacerBox(size: SpacerSize.huge),
                      const VerticalSpacerBox(size: SpacerSize.huge),
                      const VerticalSpacerBox(size: SpacerSize.huge),
                      const VerticalSpacerBox(size: SpacerSize.huge),
                      const VerticalSpacerBox(size: SpacerSize.huge),
                      const VerticalSpacerBox(size: SpacerSize.huge),
                      const VerticalSpacerBox(size: SpacerSize.huge),
                      const VerticalSpacerBox(size: SpacerSize.huge),
                      const VerticalSpacerBox(size: SpacerSize.huge),
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
