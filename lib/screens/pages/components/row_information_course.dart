import 'package:flutter/material.dart';
import 'package:thunderapp/assets/index.dart';
import 'package:thunderapp/shared/constants/app_number_constants.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class RowInformationCurse extends StatelessWidget {
  const RowInformationCurse({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(// ainda não está pronto, essa vai ser a linha que vai ficar nas informaçoes do curso
                        children: [
                          Container(
                            width: widthContainer,
                            height: heightContainer,
                            decoration: BoxDecoration(
                              color: backgroundIconInformation,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Image.asset(Assets.grau)
                            ),
                        const SizedBox(width: marginRight,),
                           const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                               Text('GRAU', style: kTitle7 ),
                              Text("teste",
                              style: titleGrau 
                              )
                            ],
                           )
                        ],
                      );
  }
}