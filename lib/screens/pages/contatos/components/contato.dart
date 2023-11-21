import 'package:flutter/material.dart';
import 'package:thunderapp/assets/index.dart';
import 'package:thunderapp/screens/pages/contatos/components/launch_email.dart';
import 'package:thunderapp/shared/constants/app_number_constants.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class Contato extends StatelessWidget {
  const Contato({Key? key, required this.nome, required this.email, required this.area}) : super(key: key);
final String nome;
final String email;
final String area;
  @override
  Widget build(BuildContext context) {
    return  Row(
        children: [
          Container(
                    width: 440,
                    height: 135,
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
                         onTap: () async {
                          await Email.launchEmail(email);
                        },
                        child: Text(email, style: kTitle5,),
                        
                        ),
                        const SizedBox(height: 10,),
                         Row(
                          children: [
                            Container(
                              width: 290,
                                child: Text("Área: $area", style: kTitle500,), 
                            ),
                            Container(
                              width: 110,
                              height: 25,
                             child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                
                                Image.asset(Assets.agronomia, scale: 1.4,),
                                const SizedBox(width: 10,),
                                Image.asset(Assets.bcc, scale: 1.4,),
                                 const SizedBox(width: 10,),
                                Image.asset(Assets.alimentos, scale: 1.4,),
                                 const SizedBox(width: 10,),

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