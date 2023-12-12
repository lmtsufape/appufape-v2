import 'package:flutter/material.dart';
import 'package:thunderapp/assets/index.dart';
import 'package:thunderapp/components/utils/vertical_spacer_box.dart';
import 'package:thunderapp/screens/pages/components/buttom_name_course.dart';
import 'package:thunderapp/screens/screens_index.dart';
import 'package:thunderapp/shared/components/BottomNavigation.dart';
import 'package:thunderapp/shared/constants/app_enums.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';



class DocentesPage extends StatefulWidget {
  const DocentesPage({super.key});

  @override
  State<DocentesPage> createState() => _DocentesPageState();
}

class _DocentesPageState extends State<DocentesPage> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Scaffold(
      backgroundColor: kOnSurfaceColor,
      appBar: AppBar(
        title: const Text(
          'Docentes',
          style: kTitle22,
        ),
        centerTitle: true,
        backgroundColor: kBack1,
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: selectedIndex,
      ),

      
      body:  SingleChildScrollView(
      
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(17),
            child: const Column(
              children: [
                 Align(
                  alignment: Alignment.topCenter,
                  child: Text("Lista de nomes e E-mails de Docentes da UFAPE", style: ktitle700,textAlign: TextAlign.center),
                ),
                 SizedBox(height: 25,), 

                 VerticalSpacerBox(size: SpacerSize.large),

               ButtomNameCourse(logoCurso: Assets.agronomia, nomeDoCurso: "Agronomia", rota: Screens.docentesAgronomia,horizontalSpacerSize1: SpacerSize.small, horizontalSpacerSize2: SpacerSize.huge,),
               VerticalSpacerBox(size: SpacerSize.medium),

               ButtomNameCourse(logoCurso: Assets.bcc, nomeDoCurso: "Ciência da Computação", rota: Screens.docentesBcc, horizontalSpacerSize1: SpacerSize.huge, horizontalSpacerSize2: SpacerSize.tiny,),
               VerticalSpacerBox(size: SpacerSize.medium),
               
               ButtomNameCourse(logoCurso: Assets.alimentos, nomeDoCurso: "Engenharia de Alimentos", rota: Screens.docentesEngAlimentos, horizontalSpacerSize1: SpacerSize.small, horizontalSpacerSize2: SpacerSize.small),
               VerticalSpacerBox(size: SpacerSize.medium),

                ButtomNameCourse(logoCurso: Assets.veterinaria, nomeDoCurso: "Medicina Veterinária", rota: Screens.docentesMedVeterinaria, horizontalSpacerSize1: SpacerSize.small, horizontalSpacerSize2: SpacerSize.small),
               VerticalSpacerBox(size: SpacerSize.medium),
               
               ButtomNameCourse(logoCurso: Assets.zootecnia, nomeDoCurso: "Zootecnia", rota: Screens.docentesZootecnia, horizontalSpacerSize1: SpacerSize.medium, horizontalSpacerSize2: SpacerSize.huge),
               VerticalSpacerBox(size: SpacerSize.medium),

               ButtomNameCourse(logoCurso: Assets.letras, nomeDoCurso: "Letras", rota: Screens.docentesLetras, horizontalSpacerSize1: SpacerSize.huge, horizontalSpacerSize2: SpacerSize.huge),
               VerticalSpacerBox(size: SpacerSize.medium),

               ButtomNameCourse(logoCurso: Assets.pedagogia, nomeDoCurso: "Pedagogia", rota: Screens.docentesPedagogia, horizontalSpacerSize1: SpacerSize.huge, horizontalSpacerSize2: SpacerSize.huge),
                
              ],
              
            ),
            ),
        ),
      ),
    );
  }
}
