import 'package:flutter/material.dart';
import 'package:thunderapp/components/utils/horizontal_spacer_box.dart';
import 'package:thunderapp/components/utils/vertical_spacer_box.dart';
import 'package:thunderapp/shared/components/BottomNavigation.dart';
import 'package:thunderapp/shared/constants/app_enums.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class MestradoPage extends StatelessWidget {
  const MestradoPage({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Text('Mestrado', style: kTitle22),
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

            //=====================================================
            //                Ciências Ambientais
            //=====================================================

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
                      mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        HorizontalSpacerBox(size: SpacerSize.huge),
                        HorizontalSpacerBox(size: SpacerSize.small),
                        Text(
                          'Ciências Ambientais',
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
              onTap: () => launchUrl(Uri.parse("http://www.ppciam.ufrpe.br/")),
            ),

            //=====================================================
            //      mestrado em ciência animal e pastagens
            //=====================================================

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
                       mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        HorizontalSpacerBox(size: SpacerSize.large),
                        Text(
                          'Ciência Animal e Pastagens',
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
              onTap: () => launchUrl(Uri.parse("http://www.pgcap.ufrpe.br/")),
            ),

            //=====================================================
            //          mestrado em produção agrícola
            //=====================================================

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
                       mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        HorizontalSpacerBox(size: SpacerSize.large),
                        Text(
                          'Produção Agrícola',
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
              onTap: () => launchUrl(Uri.parse("https://www.ppgpa.ufrpe.br/")),
            ),

            //=====================================================
            //      mestrado em Profissional em Letras
            //=====================================================

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
                       mainAxisAlignment: MainAxisAlignment.center,
                      children:  [
                        HorizontalSpacerBox(size: SpacerSize.large),
                        Text(
                          'Profissional em Letras',
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
              onTap:() => launchUrl(Uri.parse("http://profletras.ufrpe.br/"))
            ),

          ],
        ),
      ),
    );
  }
}
