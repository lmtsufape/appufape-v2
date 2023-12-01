import 'package:flutter/material.dart';
import 'package:thunderapp/assets/index.dart';
import 'package:thunderapp/shared/constants/app_number_constants.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class InformationCourse extends StatelessWidget {
  const InformationCourse({super.key, required this.grau, required this.turno, required this.duracao, required this.vagas, required this.ingresso, required this.paginaDestino});
final String grau;
final String turno;
final String duracao;
final String vagas;
final String ingresso;
final Uri paginaDestino;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: kOnSurfaceColor,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 450,
                    height: 550,
                    margin: const EdgeInsets.all(23),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                      BoxShadow(
                        color: boxShadowButtom,
                        offset: Offset(0, 3),
                        blurRadius: 6.0,
                        spreadRadius: 0.0,
                    )
                  ],
                  borderRadius: BorderRadius.circular(7),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Column(
                    children: [
                      const Center(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Text(
                              'INFORMAÇÕES',
                              style: TextStyle(
                                fontFamily: 'quicksand',
                                color: Colors.black,
                                fontSize: 23,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        ),
                      ),
                      const Divider(
                        thickness: 1,
                      ),
                      const SizedBox(height: 20,),

                      //===========================
                      //           GRAU 
                      //===========================

                      Row(
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
                            Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('GRAU', style: kTitle7 ),
                              Text(grau,
                              style: titleGrau 
                              )
                            ],
                           )
                        ],
                      ),
                      const SizedBox(height: marginBottom,),

                      //===========================
                      //           turno 
                      //===========================

                      Row(
                        children: [
                          Container(
                            width: widthContainer,
                            height: heightContainer,
                            decoration: BoxDecoration(
                              color: backgroundIconInformation,
                              borderRadius: BorderRadius.circular(50),
                            ),
                            child: Image.asset(Assets.turno)
                            ),
                        const SizedBox(width: marginRight,),

                            Column(
                            
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('TURNO', style: kTitle7 ),
                              Text(turno,
                              style: titleGrau 
                              )
                            ],
                           )
                        ],
                      ),
                      const SizedBox(height: marginBottom,),
                      //===========================
                      //           DURAÇÃO 
                      //===========================

                      Row(
                        children: [
                          Container(
                           width: widthContainer,
                            height: heightContainer,
                            decoration: BoxDecoration(
                              color: backgroundIconInformation,
                              borderRadius: BorderRadius.circular(50),
                ),
                            child: Image.asset(Assets.duracao)
                            ),
                      const SizedBox(width: marginRight,),
                            Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('DURAÇÃO', style: kTitle7 ),
                              Text(duracao,
                              style: titleGrau 
                              )
                            ],
                           )
                        ],
                      ),
                      const SizedBox(height: marginBottom,),

                      //===========================
                      //           VAGAS
                      //===========================

                      Row(
                        children: [
                          Container(
                            width: widthContainer,
                            height: heightContainer,
                            decoration: BoxDecoration(
                              color: backgroundIconInformation,
                              borderRadius: BorderRadius.circular(50),
                ),
                            child: Image.asset(Assets.vagas)
                            ),
                         const SizedBox(width: marginRight,),
                            Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('VAGAS', style: kTitle7 ),
                              Text(vagas,
                              style: titleGrau 
                              )
                            ],
                           )
                        ],
                      ),
                      const SizedBox(height: marginBottom,),

                      //===========================
                      //          INGRESSO
                      //===========================

                      Row(
                        children: [
                          Container(
                            width: widthContainer,
                            height: heightContainer,
                            decoration: BoxDecoration(
                              color: backgroundIconInformation,
                              borderRadius: BorderRadius.circular(50),
                ),
                            child: Image.asset(Assets.ingresso)
                            ),
                        const SizedBox(width: marginRight,),
                            Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text('INGRESSO', style: kTitle7 ),
                              Text(ingresso,
                              style: titleGrau 
                              )
                            ],
                           )
                        ],
                      ),
                      const SizedBox(height: marginBottom,),

                     
                    ],
                  ),
                ),
              ),

                      //===========================
                      //   buttom mais informação
                      //===========================

              ElevatedButton(
                onPressed:
                (() => launchUrl(paginaDestino)),
                style: ElevatedButton.styleFrom(
                  backgroundColor:kBack1,
                  
                ),
                child: const Padding(
                  padding:  EdgeInsets.all(15.0),
                  child:  Text("Saiba mais", style: TextStyle(
                    fontFamily: "Quicksand",
                    fontWeight: FontWeight.w600,
                    fontSize: 20
                      )
                    ),
                ),
                
                  
              )
            ],

            
          ),
        )
        )
        )
    );
  }
}
