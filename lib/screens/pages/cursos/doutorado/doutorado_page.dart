import 'package:flutter/material.dart';
import 'package:thunderapp/components/utils/horizontal_spacer_box.dart';
import 'package:thunderapp/components/utils/vertical_spacer_box.dart';
import 'package:thunderapp/screens/home/home_screen_controller.dart';
import 'package:thunderapp/shared/constants/app_enums.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';
import 'package:provider/provider.dart';

class DoutoradoPage extends StatefulWidget {
  const DoutoradoPage({Key? key}) : super(key: key);

  @override
  State<DoutoradoPage> createState() => _DoutoradoPageState();
}

class _DoutoradoPageState extends State<DoutoradoPage> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return ChangeNotifierProvider(
      create: (_) => HomeScreenController(),
      builder: (context, child) => Consumer<HomeScreenController>(
        builder: ((context, controller, child) => Scaffold(
              appBar: AppBar(
                title: const Text('Doutorado', style: kTitle2),
                centerTitle: true,
                toolbarOpacity: 0,
                backgroundColor: kOnSurfaceColor,
                automaticallyImplyLeading: true,
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
                              children: const [
                                HorizontalSpacerBox(size: SpacerSize.huge),
                                HorizontalSpacerBox(size: SpacerSize.huge),
                                HorizontalSpacerBox(size: SpacerSize.huge),
                                HorizontalSpacerBox(size: SpacerSize.huge),
                                HorizontalSpacerBox(size: SpacerSize.large),
                                Text(
                                  'Especialização em Questão Agrária',
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
                              children: const [
                                HorizontalSpacerBox(size: SpacerSize.huge),
                                HorizontalSpacerBox(size: SpacerSize.huge),
                                HorizontalSpacerBox(size: SpacerSize.huge),
                                HorizontalSpacerBox(size: SpacerSize.small),
                                Text(
                                  'Especialização em Ensino de Botânica ',
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
            )),
      ),
    );
  }
}