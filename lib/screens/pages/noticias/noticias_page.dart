import 'package:flutter/material.dart';
import 'package:thunderapp/assets/index.dart';
import 'package:thunderapp/shared/components/bottom_navigation.dart';
import 'package:thunderapp/shared/components/row_noticia.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class NoticiasPage extends StatefulWidget {
  const NoticiasPage({super.key});

  @override
  State<NoticiasPage> createState() => _NoticiasPageState();
}

class _NoticiasPageState extends State<NoticiasPage> {
  @override
  Widget build(BuildContext context) {
        int selectedIndex = 0;

    return  Scaffold(
        appBar: AppBar(
          title: const Text('Noticías', style: kTitle22),
          centerTitle: true,
          backgroundColor: kBack1,
        ),
         bottomNavigationBar: BottomNavigation(
          selectedIndex: selectedIndex,
        ),
        backgroundColor: kOnSurfaceColor,

        body: SingleChildScrollView( child: Center(
          child: Container(
            margin: const EdgeInsets.only(top: 20),
            width: 450,
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(30)),
              boxShadow: [
                    BoxShadow(
                      color: boxShadowButtom,
                      offset: Offset(0, 3),
                      blurRadius: 6.0,
                      spreadRadius: 0.0,
                  ),

                ],
            ),
            
            child:  Column(
              children: [
                Container(
                  width: 450,
                  height: 55,
                  decoration: const BoxDecoration(
                     color: kBack1,
                     borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30))
                  ),
                child: const Center(child: Text("Destaques", style: TextStyle(color: Colors.white, fontSize: 20),)),
                  ),
               Column(
                children: [
                 const SizedBox(height: 23,),
                  const RowNoticia(descricao: "A UFAPE anuncia que...", data: "12/12/2023", img: Assets.imgNoticia1,),
                  const RowNoticia(descricao: "texto de exemplo", data: "14/12/2023", img: Assets.imgNoticia2,),
                  const RowNoticia(descricao: "A UFAPE anuncia que...", data: "30/12/2023", img: Assets.imgNoticia3,),
                  Container(
                    alignment: AlignmentDirectional.centerEnd,
                    width: 410,
                    height: 50,
                    child: const Text("ver mais", style: TextStyle(color: kBack1, fontSize: 20),),
                  )
                ],
              )
              ],
            ),
          ),
        ))
    );
  }
}
