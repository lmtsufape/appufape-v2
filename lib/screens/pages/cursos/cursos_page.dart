import 'package:flutter/material.dart';
import 'package:thunderapp/components/utils/horizontal_spacer_box.dart';
import 'package:thunderapp/components/utils/vertical_spacer_box.dart';
import 'package:thunderapp/screens/screens_index.dart';
import 'package:thunderapp/shared/components/bottom_navigation.dart';
import 'package:thunderapp/shared/constants/app_enums.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class CursosPage extends StatelessWidget {
  const CursosPage({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cursos', style: kTitle22),
        centerTitle: true,
        backgroundColor: kBack1,
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: selectedIndex,
      ),
      body: Container(
        color: kOnSurfaceColor,
        width: size.width,
        padding: const EdgeInsets.all(17),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            const VerticalSpacerBox(size: SpacerSize.large),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 440,
                    height: 95,
                    decoration: BoxDecoration(
                      color: kBack3,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: kText2.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Row(
                      children:  [
                        HorizontalSpacerBox(size: SpacerSize.huge),
                        HorizontalSpacerBox(size: SpacerSize.huge),
                        HorizontalSpacerBox(size: SpacerSize.huge),
                        HorizontalSpacerBox(size: SpacerSize.huge),
                        HorizontalSpacerBox(size: SpacerSize.huge),
                        Text(
                          'Graduação',
                          style: TextStyle(
                              color: kBack1,
                              fontSize: 23,
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, Screens.graduacao);
              },
            ),
            const VerticalSpacerBox(size: SpacerSize.medium),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 440,
                    height: 95,
                    decoration: BoxDecoration(
                      color: kBack3,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: kText2.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Row(
                      children:  [
                        HorizontalSpacerBox(size: SpacerSize.huge),
                        HorizontalSpacerBox(size: SpacerSize.huge),
                        HorizontalSpacerBox(size: SpacerSize.huge),
                        HorizontalSpacerBox(size: SpacerSize.huge),
                        HorizontalSpacerBox(size: SpacerSize.small),
                        Text(
                          'Especialização',
                          style: TextStyle(
                              color: kBack1,
                              fontSize: 23,
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, Screens.especializacao);
              },
            ),
            const VerticalSpacerBox(size: SpacerSize.medium),
            InkWell(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 440,
                    height: 95,
                    decoration: BoxDecoration(
                      color: kBack3,
                      borderRadius: const BorderRadius.all(Radius.circular(20)),
                      boxShadow: [
                        BoxShadow(
                          color: kText2.withOpacity(0.5),
                          spreadRadius: 0,
                          blurRadius: 3,
                          offset:
                              const Offset(0, 0), // changes position of shadow
                        ),
                      ],
                    ),
                    child: const Row(
                      children:  [
                        HorizontalSpacerBox(size: SpacerSize.huge),
                        HorizontalSpacerBox(size: SpacerSize.huge),
                        HorizontalSpacerBox(size: SpacerSize.huge),
                        HorizontalSpacerBox(size: SpacerSize.huge),
                        HorizontalSpacerBox(size: SpacerSize.huge),
                        Text(
                          'Mestrado',
                          style: TextStyle(
                              color: kBack1,
                              fontSize: 23,
                              fontWeight: FontWeight.w700),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              onTap: () {
                Navigator.pushNamed(context, Screens.mestrado);
              },
            ),
            const VerticalSpacerBox(size: SpacerSize.medium),

            //opçao doutorado esta comentado por nao ter ainda na universidade
            
            // InkWell(
            //   child: Row(
            //     mainAxisAlignment: MainAxisAlignment.center,
            //     children: [
            //       Container(
            //         width: 440,
            //         height: 95,
            //         decoration: BoxDecoration(
            //           color: kBack3,
            //           borderRadius: const BorderRadius.all(Radius.circular(20)),
            //           boxShadow: [
            //             BoxShadow(
            //               color: kText2.withOpacity(0.5),
            //               spreadRadius: 0,
            //               blurRadius: 3,
            //               offset:
            //                   const Offset(0, 0), // changes position of shadow
            //             ),
            //           ],
            //         ),
            //         child: const Row(
            //           children:  [
            //             HorizontalSpacerBox(size: SpacerSize.huge),
            //             HorizontalSpacerBox(size: SpacerSize.huge),
            //             HorizontalSpacerBox(size: SpacerSize.huge),
            //             HorizontalSpacerBox(size: SpacerSize.huge),
            //             HorizontalSpacerBox(size: SpacerSize.huge),
            //             Text(
            //               'Doutorado',
            //               style: TextStyle(
            //                   color: kBack1,
            //                   fontSize: 23,
            //                   fontWeight: FontWeight.w700),
            //               textAlign: TextAlign.center,
            //             ),
            //           ],
            //         ),
            //       ),
            //     ],
            //   ),
            //   onTap: () {
            //     Navigator.pushNamed(context, Screens.doutorado);
            //   },
            // ),
            const VerticalSpacerBox(size: SpacerSize.huge),
            const VerticalSpacerBox(size: SpacerSize.huge),
            const VerticalSpacerBox(size: SpacerSize.huge),
          ],
        ),
      ),
    );
  }
}
