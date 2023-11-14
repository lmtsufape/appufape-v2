import 'package:flutter/material.dart';
import 'package:thunderapp/assets/index.dart';
import 'package:thunderapp/shared/constants/app_number_constants.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class InformationCourse extends StatelessWidget {
  const InformationCourse({super.key, required this.grau, required this.turno, required this.duracao, required this.vagas, required this.ingresso, required this.paginaDestino});
final String grau;
final String turno;
final String duracao;
final String vagas;
final String ingresso;
final String paginaDestino;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        backgroundColor: kOnSurfaceColor,
        body: SafeArea(
            child: Center(
              child: Column(
                children: [
                  Container(
                    width: 450,
                    height: 600,
                    margin: const EdgeInsets.all(23),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      boxShadow: const [
                      BoxShadow(
                        color: Color.fromARGB(59, 0, 0, 0),
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
                            margin: const EdgeInsets.only(right: marginIconeRight, bottom: marginIconeBottom),
                            decoration: BoxDecoration(
                              
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(50),
                ),
                            child: Image.asset(Assets.grau)
                            ),
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

                      //===========================
                      //           turno 
                      //===========================

                      Row(
                        children: [
                          Container(
                            width: widthContainer,
                            height: heightContainer,
                            margin: const EdgeInsets.only(right: marginIconeRight, bottom: marginIconeBottom),
                            decoration: BoxDecoration(
                              
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(50),
                ),
                            child: Image.asset(Assets.turno)
                            ),
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

                      //===========================
                      //           DURAÇÃO 
                      //===========================

                      Row(
                        children: [
                          Container(
                           width: widthContainer,
                            height: heightContainer,
                            margin: const EdgeInsets.only(right: marginIconeRight, bottom: marginIconeBottom),
                            decoration: BoxDecoration(
                              
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(50),
                ),
                            child: Image.asset(Assets.duracao)
                            ),
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

                      //===========================
                      //           VAGAS
                      //===========================

                      Row(
                        children: [
                          Container(
                            width: widthContainer,
                            height: heightContainer,
                            margin: const EdgeInsets.only(right: marginIconeRight, bottom: marginIconeBottom),
                            decoration: BoxDecoration(
                              
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(50),
                ),
                            child: Image.asset(Assets.vagas)
                            ),
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

                      //===========================
                      //          INGRESSO
                      //===========================

                      Row(
                        children: [
                          Container(
                            width: widthContainer,
                            height: heightContainer,
                            margin: const EdgeInsets.only(right: marginIconeRight, bottom: marginIconeBottom),
                            decoration: BoxDecoration(
                              
                              color: Colors.black12,
                              borderRadius: BorderRadius.circular(50),
                ),
                            child: Image.asset(Assets.ingresso)
                            ),
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
                    ],
                  ),
                ),
              ),
              ElevatedButton(
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
                onPressed: () {
                  Navigator.pushNamed(context, paginaDestino);
                }, 
                  
              )
            ],

            
          ),
        ))
    );
  }
}