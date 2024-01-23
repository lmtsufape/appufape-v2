import 'package:thunderapp/assets/index.dart';
import 'package:flutter/material.dart';
import 'package:thunderapp/components/utils/horizontal_spacer_box.dart';
import 'package:thunderapp/components/utils/vertical_spacer_box.dart';
import 'package:thunderapp/screens/screens_index.dart';
import 'package:thunderapp/shared/components/bottom_navigation.dart';
import 'package:thunderapp/shared/constants/app_enums.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class EditaisScreen extends StatelessWidget {
  const EditaisScreen({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Editais', style: kTitle22),
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
        child: SingleChildScrollView(
          child: Column(
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const VerticalSpacerBox(size: SpacerSize.large),
              Row(
                children: [
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('PIBAE',
                        style: TextStyle(
                            fontSize: 21,
                            color: kText2,
                            fontWeight: FontWeight.w500)),
                  ),
                  const HorizontalSpacerBox(size: SpacerSize.medium),
                  InkWell(
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Image.asset(
                          Assets.seta,
                        )),
                    onTap: () {},
                  ),
                ],
              ),
              const VerticalSpacerBox(size: SpacerSize.large),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 440,
                      height: 65,
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
                                child: const Row(
                                  children: [
                                    Text(''),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Center(
                            child: Row(
                              children: [
                                HorizontalSpacerBox(size: SpacerSize.huge),
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
                onTap: () {
                  Navigator.pushNamed(context, Screens.editalPage);
                },
              ),
              const VerticalSpacerBox(size: SpacerSize.medium),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 440,
                      height: 65,
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
                                child: const Row(
                                  children: [
                                    Text(''),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Center(
                            child: Row(
                              children: [
                                HorizontalSpacerBox(size: SpacerSize.huge),
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
                onTap: () {
                  Navigator.pushNamed(context, Screens.editalPage);
                },
              ),
              const VerticalSpacerBox(size: SpacerSize.large),
              Row(
                children: [
                  const Align(
                    alignment: Alignment.bottomLeft,
                    child: Text('PIBEX',
                        style: TextStyle(
                            fontSize: 21,
                            color: kText2,
                            fontWeight: FontWeight.w500)),
                  ),
                  const HorizontalSpacerBox(size: SpacerSize.medium),
                  InkWell(
                    child: Align(
                        alignment: Alignment.bottomLeft,
                        child: Image.asset(
                          Assets.seta,
                        )),
                    onTap: () {},
                  ),
                ],
              ),
              const VerticalSpacerBox(size: SpacerSize.large),
              InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 440,
                      height: 65,
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
                                child: const Row(
                                  children: [
                                    Text(''),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          const Center(
                            child: Row(
                              children: [
                                HorizontalSpacerBox(size: SpacerSize.huge),
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
                onTap: () {
                  Navigator.pushNamed(context, Screens.editalPage);
                },
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
    );
  }
}
