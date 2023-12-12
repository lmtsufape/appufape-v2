import 'package:flutter/material.dart';
import 'package:thunderapp/assets/index.dart';
import 'package:thunderapp/components/utils/vertical_spacer_box.dart';
import 'package:thunderapp/screens/pages/components/buttom_name_course.dart';
import 'package:thunderapp/screens/screens_index.dart';
import 'package:thunderapp/shared/components/BottomNavigation.dart';
import 'package:thunderapp/shared/constants/app_enums.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class GraduacaoPage extends StatelessWidget {
  const GraduacaoPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: kPrimaryColor,
      appBar: AppBar(
        title: const Text('Cursos', style: kTitle22),
        centerTitle: true,
        backgroundColor: kBack1,
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: selectedIndex,
      ),
      body: SingleChildScrollView(
        child: Container(
          color: kOnSurfaceColor,
          width: size.width,
          padding: const EdgeInsets.all(17),
          child: const Column(
            children: [
               VerticalSpacerBox(size: SpacerSize.large),

               ButtomNameCourse(logoCurso: Assets.agronomia, nomeDoCurso: "Agronomia", rota: Screens.agronomiaPage,horizontalSpacerSize1: SpacerSize.small, horizontalSpacerSize2: SpacerSize.huge,),
               VerticalSpacerBox(size: SpacerSize.medium),

               ButtomNameCourse(logoCurso: Assets.bcc, nomeDoCurso: "Ciência da Computação", rota: Screens.bccPage, horizontalSpacerSize1: SpacerSize.huge, horizontalSpacerSize2: SpacerSize.tiny,),
               VerticalSpacerBox(size: SpacerSize.medium),
               
               ButtomNameCourse(logoCurso: Assets.alimentos, nomeDoCurso: "Engenharia de Alimentos", rota: Screens.engAlimentosPage, horizontalSpacerSize1: SpacerSize.small, horizontalSpacerSize2: SpacerSize.small),
               VerticalSpacerBox(size: SpacerSize.medium),

                ButtomNameCourse(logoCurso: Assets.veterinaria, nomeDoCurso: "Medicina Veterinária", rota: Screens.veterinariaPage, horizontalSpacerSize1: SpacerSize.small, horizontalSpacerSize2: SpacerSize.small),
               VerticalSpacerBox(size: SpacerSize.medium),
               
               ButtomNameCourse(logoCurso: Assets.zootecnia, nomeDoCurso: "Zootecnia", rota: Screens.zootecniaPage, horizontalSpacerSize1: SpacerSize.medium, horizontalSpacerSize2: SpacerSize.huge),
               VerticalSpacerBox(size: SpacerSize.medium),

               ButtomNameCourse(logoCurso: Assets.letras, nomeDoCurso: "Letras", rota: Screens.letrasPage, horizontalSpacerSize1: SpacerSize.huge, horizontalSpacerSize2: SpacerSize.huge),
               VerticalSpacerBox(size: SpacerSize.medium),

               ButtomNameCourse(logoCurso: Assets.pedagogia, nomeDoCurso: "Pedagogia", rota: Screens.pedagogiaPage, horizontalSpacerSize1: SpacerSize.huge, horizontalSpacerSize2: SpacerSize.huge),

               VerticalSpacerBox(size: SpacerSize.huge),
               VerticalSpacerBox(size: SpacerSize.huge),
               VerticalSpacerBox(size: SpacerSize.huge),
            ],
          ),
        ),
      ),
    );
  }
}
