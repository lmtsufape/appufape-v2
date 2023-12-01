import 'package:flutter/material.dart';
import 'package:thunderapp/components/utils/horizontal_spacer_box.dart';
import 'package:thunderapp/components/utils/vertical_spacer_box.dart';
import 'package:thunderapp/shared/components/BottomNavigation.dart';
import 'package:thunderapp/shared/constants/app_enums.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class EspecializacaoPage extends StatelessWidget {
  const EspecializacaoPage({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Especialização', style: kTitle22),
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
                        HorizontalSpacerBox(size: SpacerSize.small),
                        HorizontalSpacerBox(size: SpacerSize.small),
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
              onTap: () => launchUrl(Uri.parse("http://ufape.edu.br/curso-especializa%C3%A7%C3%A3o-em-quest%C3%A3o-agr%C3%A1ria")),
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
                      children: [
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
              onTap: () => launchUrl(Uri.parse("http://ufape.edu.br/curso-especializa%C3%A7%C3%A3o-em-ensino-bot%C3%A2nica")),
            ),
           
          ],
        ),
      ),
    );
  }

}