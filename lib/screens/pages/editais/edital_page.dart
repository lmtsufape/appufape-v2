import 'package:appufape/assets/index.dart';
import 'package:appufape/components/utils/horizontal_spacer_box.dart';
import 'package:appufape/components/utils/vertical_spacer_box.dart';
import 'package:appufape/shared/constants/app_enums.dart';
import 'package:appufape/shared/constants/style_constants.dart';
import 'package:flutter/material.dart';

class EditalPage extends StatelessWidget {
  const EditalPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Edital'),
          toolbarOpacity: 0,
        ),
        body: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'PREC divulga primeiro Edital PIBEX-UFAPE 2022',
                  style: kTitle7,
                ),
                const VerticalSpacerBox(size: SpacerSize.small),
                Wrap(
                  children: const [
                    Text(
                      'A Pró-Reitoria de Extensão e Cultura (PREC) lançou o primeiro Edital do Programa Institucional de Bolsa de Extensão – PIBEX - UFAPE 2022. O PIBEX-UFAPE é equivalente ao Programa BEXT da nossa tutora UFRPE.',
                      style: kTitle6,
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                const Center(
                  child: Text(
                    'Anexos',
                    style: kTitle8,
                  ),
                ),
                const VerticalSpacerBox(size: SpacerSize.large),
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
                Row(
                  children: [
                    Image.asset(Assets.document),
                    const HorizontalSpacerBox(size: SpacerSize.small),
                    const Text(
                      'Modelo_Norteador_de_Elaboração_Projeto_de_Extensão_da_UFAPE_AnexoEdital.docx',
                      style: kTitle51,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(Assets.document),
                    const HorizontalSpacerBox(size: SpacerSize.small),
                    const Text(
                      'Modelo_Norteador_Plano_Trabalho_do_Bolsista_Anexo2_Edital_PIBEX_0.docx',
                      style: kTitle51,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset(Assets.document),
                    const HorizontalSpacerBox(size: SpacerSize.small),
                    const Text(
                      'Termo de Compromisso_bolsista_PIBEX_UFAPE.docx',
                      style: kTitle51,
                    ),
                  ],
                ),
              ],
            )));
  }
}
