import 'package:flutter/material.dart';
import 'package:thunderapp/screens/pages/contatos/components/launch_email.dart';
import 'package:thunderapp/shared/constants/app_number_constants.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class Contato extends StatelessWidget {
  const Contato({super.key, required this.nome, required this.email, required this.area, required this.logoCurso1, required this.logoCurso2, required this.logoCurso3, required this.numeroDeIcons,});
final int numeroDeIcons;
final String nome;
final String email;
final String area;
final String logoCurso1;
final String logoCurso2;
final String logoCurso3;
  @override
  Widget build(BuildContext context) {

    return  Row(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
                    width: 440,
                    height: 150,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(kDefaultBorderRadius)),
                      boxShadow: [
                        BoxShadow(
                          color: boxShadowButtom,
                          offset:  Offset(0, 3),
                          blurRadius: 6,
                          spreadRadius: 0,
                      )]
                    ),
                    child:  Padding(
    
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(nome, style:  ktitle700,),
                          const SizedBox(height: 10,),
                         InkWell(
                         onTap:(() => Email.launchEmail(email)),
                        child: Text(email, style: kTitle5,),
                        
                        ),
                        const SizedBox(height: 10,),
                         Row(
                          children: [
                            // ignore: sized_box_for_whitespace
                            Container(
                              width: 290,
                                child: Text("Área: $area", style: kTitle500,), 
                            ),
                            // ignore: sized_box_for_whitespace
                            Container(
                              width: 110,
                              height: 25,
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Image.asset(logoCurso1, width: 25, height: 25,),
                                if(numeroDeIcons > 1) Image.asset(logoCurso2, width: 25, height: 25,),
                                if(numeroDeIcons > 2) Image.asset(logoCurso3, width: 25, height: 25,)
                              ],
                             ),
                            )
                          
                          ],
                        )
                        ],
                      ),
                    ),
                  )
        ],
    );
  }
}