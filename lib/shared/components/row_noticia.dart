import 'package:flutter/material.dart';
import 'package:thunderapp/components/utils/vertical_spacer_box.dart';
import 'package:thunderapp/shared/constants/app_enums.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class RowNoticia extends StatelessWidget {
  const RowNoticia({super.key, required this.data, required this.descricao, required this.img});
  final String img;
  final String descricao;
  final String data;
  @override
  Widget build(BuildContext context) {
    return InkWell(
       child: Container(
          margin: const EdgeInsets.all(12),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: const BorderRadius.all(Radius.circular(25)),
            boxShadow: [
              BoxShadow(
                color: boxShadowButtom.withOpacity(0.5),
                spreadRadius: 0,
                blurRadius: 5,
                offset: const Offset(0, 0), // changes position of shadow
          ),
        ],
      ),
      width: 450,
      height: 150,
      child: Row(
        children: [
         const  VerticalSpacerBox(size: SpacerSize.large),
         Container(
          color: Colors.white,
          width: 130,
          height: 130,
          margin: const EdgeInsets.all(15),
          child: Image.asset(img, scale: 1.4,),
         ),
          Column(
          children: [
          Container(
            margin: const EdgeInsets.only(top: 14),
            color: const Color.fromARGB(255, 255, 255, 255),
            width: 250,
            height: 108,
             child: Text(descricao, style: const TextStyle(color: Colors.black, fontSize: 20),
            ),
          ),

          Container(
            width: 250,
            color: const Color.fromARGB(255, 255, 255, 255),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
             Text(data, style: const TextStyle(color: Colors.black, fontSize: 16,),),
          ],),
          )
          ],
         )
    
        ],
      ),
    ));
  }
}