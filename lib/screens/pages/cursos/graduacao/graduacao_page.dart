import 'package:flutter/material.dart';
import 'package:thunderapp/assets/index.dart';
import 'package:thunderapp/components/utils/horizontal_spacer_box.dart';
import 'package:thunderapp/components/utils/vertical_spacer_box.dart';
import 'package:thunderapp/shared/components/BottomNavigation.dart';
import 'package:thunderapp/shared/constants/app_enums.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class GraduacaoPage extends StatelessWidget {
  const GraduacaoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Graduação', style: kTitle2),
        centerTitle: true,
        toolbarOpacity: 0,
        backgroundColor: kOnSurfaceColor,
        automaticallyImplyLeading: true,
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: selectedIndex,
      ),
      body: SingleChildScrollView(
        child: Container(
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
                      child: Row(
                        children: [
                          const HorizontalSpacerBox(size: SpacerSize.huge),
                          Image.asset(
                            Assets.agronomia,
                            scale: 0.7,
                          ),
                          const HorizontalSpacerBox(size: SpacerSize.huge),
                          const HorizontalSpacerBox(size: SpacerSize.huge),
                          const HorizontalSpacerBox(size: SpacerSize.medium),
                          const Text(
                            'Agronomia',
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
                onTap: () {},
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
                      child: Row(
                        children: [
                          const HorizontalSpacerBox(size: SpacerSize.huge),
                          Image.asset(
                            Assets.bcc,
                            scale: 0.7,
                          ),
                          const HorizontalSpacerBox(size: SpacerSize.huge),
                          const HorizontalSpacerBox(size: SpacerSize.medium),
                          const Text(
                            'Ciência da Computação',
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
                onTap: () {},
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
                      child: Row(
                        children: [
                          const HorizontalSpacerBox(size: SpacerSize.huge),
                          Image.asset(
                            Assets.alimentos,
                            scale: 0.7,
                          ),
                          const HorizontalSpacerBox(size: SpacerSize.huge),
                          const Text(
                            'Engenharia de Alimentos',
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
                onTap: () {},
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
                      child: Row(
                        children: [
                          const HorizontalSpacerBox(size: SpacerSize.large),
                          Image.asset(
                            Assets.veterinaria,
                            scale: 0.7,
                          ),
                          const HorizontalSpacerBox(size: SpacerSize.huge),
                          const HorizontalSpacerBox(size: SpacerSize.small),
                          const Text(
                            'Medicina Veterinária',
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
                onTap: () {},
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
                      child: Row(
                        children: [
                          const HorizontalSpacerBox(size: SpacerSize.large),
                          Image.asset(
                            Assets.veterinaria,
                            scale: 0.7,
                          ),
                          const HorizontalSpacerBox(size: SpacerSize.huge),
                          const HorizontalSpacerBox(size: SpacerSize.huge),
                          const HorizontalSpacerBox(size: SpacerSize.large),
                          const Text(
                            'Zootecnia',
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
                onTap: () {},
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
                      child: Row(
                        children: [
                          const HorizontalSpacerBox(size: SpacerSize.huge),
                          Image.asset(
                            Assets.letras,
                            scale: 0.7,
                          ),
                          const HorizontalSpacerBox(size: SpacerSize.huge),
                          const HorizontalSpacerBox(size: SpacerSize.huge),
                          const HorizontalSpacerBox(size: SpacerSize.huge),
                          const HorizontalSpacerBox(size: SpacerSize.small),
                          const Text(
                            'Letras',
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
                onTap: () {},
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
                      child: Row(
                        children: [
                          const HorizontalSpacerBox(size: SpacerSize.large),
                          const HorizontalSpacerBox(size: SpacerSize.medium),
                          Image.asset(
                            Assets.pedagogia,
                            scale: 0.7,
                          ),
                          const HorizontalSpacerBox(size: SpacerSize.huge),
                          const HorizontalSpacerBox(size: SpacerSize.huge),
                          const HorizontalSpacerBox(size: SpacerSize.huge),
                          const Text(
                            'Pedagogia',
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
                onTap: () {},
              ),
              const VerticalSpacerBox(size: SpacerSize.huge),
              const VerticalSpacerBox(size: SpacerSize.huge),
              const VerticalSpacerBox(size: SpacerSize.huge),
            ],
          ),
        ),
      ),
    );
    ;
  }
}
