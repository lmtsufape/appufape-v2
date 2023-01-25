import 'package:thunderapp/assets/index.dart';
import 'package:thunderapp/components/utils/horizontal_spacer_box.dart';
import 'package:thunderapp/components/utils/vertical_spacer_box.dart';
import 'package:thunderapp/shared/components/BottomNavigation.dart';
import 'package:thunderapp/shared/constants/app_enums.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';
import 'package:flutter/material.dart';

class EditalPage extends StatelessWidget {
  const EditalPage({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edital', style: kTitle2),
          centerTitle: true,
          toolbarOpacity: 0,
          automaticallyImplyLeading: true,
          backgroundColor: kOnSurfaceColor,
        ),
        backgroundColor: kOnSurfaceColor,
        bottomNavigationBar: BottomNavigation(
          selectedIndex: selectedIndex,
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const VerticalSpacerBox(size: SpacerSize.huge),
                const Text(
                  'PREC divulga primeiro Edital PIBEX-UFAPE 2022',
                  style: kTitle7,
                ),
                const VerticalSpacerBox(size: SpacerSize.huge),
                const VerticalSpacerBox(size: SpacerSize.huge),
                Wrap(
                  children: const [
                    Text(
                      'A Pró-Reitoria de Extensão e Cultura (PREC) lançou o primeiro Edital do Programa Institucional de Bolsa de Extensão – PIBEX - UFAPE 2022. O PIBEX-UFAPE é equivalente ao Programa BEXT da nossa tutora UFRPE.',
                      style: kTitle6,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const VerticalSpacerBox(size: SpacerSize.huge),
                const VerticalSpacerBox(size: SpacerSize.huge),
                const Center(
                  child: Text(
                    'Anexos',
                    style: kTitle8,
                  ),
                ),
                const VerticalSpacerBox(size: SpacerSize.huge),
                const VerticalSpacerBox(size: SpacerSize.huge),
                const VerticalSpacerBox(size: SpacerSize.huge),
                Row(
                  children: [
                    Image.asset(Assets.document),
                    const HorizontalSpacerBox(size: SpacerSize.small),
                    Wrap(
                      children: const [
                        Text(
                          'Edital 01-2022- PIBEX-PREC-UFAPE_0.pdf',
                          style: kTitle51,
                        ),
                      ],
                    ),
                  ],
                ),
                const VerticalSpacerBox(size: SpacerSize.small),
                Row(
                  children: [
                    Image.asset(Assets.document),
                    const HorizontalSpacerBox(size: SpacerSize.small),
                    const Text(
                      'Edital 01-2022- PIBEX-PREC-UFAPE_0.pdf',
                      style: kTitle51,
                    ),
                  ],
                ),
                const VerticalSpacerBox(size: SpacerSize.small),
                Row(
                  children: [
                    Image.asset(Assets.document),
                    const HorizontalSpacerBox(size: SpacerSize.small),
                    const Text(
                      'Edital 01-2022- PIBEX-PREC-UFAPE_0.pdf',
                      style: kTitle51,
                    ),
                  ],
                ),
                const VerticalSpacerBox(size: SpacerSize.small),
                Row(
                  children: [
                    Image.asset(Assets.document),
                    const HorizontalSpacerBox(size: SpacerSize.small),
                    const Text(
                      'Edital 01-2022- PIBEX-PREC-UFAPE_0.pdf',
                      style: kTitle51,
                    ),
                  ],
                ),
              ],
            )));
  }
}
