import 'package:flutter/material.dart';
import 'package:thunderapp/components/utils/horizontal_spacer_box.dart';
import 'package:thunderapp/shared/constants/app_enums.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class ButtomNameCourse extends StatelessWidget {
  const ButtomNameCourse({super.key, required this.logoCurso, required this.nomeDoCurso, required this.rota, required this.horizontalSpacerSize1, required this.horizontalSpacerSize2});
final String logoCurso;
final String nomeDoCurso;
final String rota;
final SpacerSize horizontalSpacerSize1;
final SpacerSize horizontalSpacerSize2;
  @override
  Widget build(BuildContext context) {
    return  InkWell(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      width: 440,
                      height: 95,
                      decoration: BoxDecoration(
                        color: kBack3,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(25)),
                        boxShadow: [
                          BoxShadow(
                            color: boxShadowButtom.withOpacity(0.5),
                            spreadRadius: 0,
                            blurRadius: 5,
                            offset: const Offset(0, 0), // changes position of shadow
                          ),
                        ],
                      ),
                      child: Row(
                        children: [
                          const HorizontalSpacerBox(size: SpacerSize.huge),
                         Align(
                          alignment: Alignment.centerLeft,
                         child: Image.asset(logoCurso, scale: 2.8,),),
                           HorizontalSpacerBox(size: horizontalSpacerSize1,),
                           HorizontalSpacerBox(size: horizontalSpacerSize2),
                           HorizontalSpacerBox(size: horizontalSpacerSize2),
                           Text(nomeDoCurso, style: const TextStyle(
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
                   Navigator.pushNamed(context, rota);
                },
              );
  }
}