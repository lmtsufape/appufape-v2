import 'package:flutter/material.dart';
import 'package:thunderapp/assets/index.dart';
import 'package:thunderapp/screens/pages/contatos/components/contato.dart';
import 'package:thunderapp/shared/components/BottomNavigation.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class DocentesBcc extends StatefulWidget {
  const DocentesBcc({super.key});

  @override
  State<DocentesBcc> createState() => _DocentesBccState();
}

class _DocentesBccState extends State<DocentesBcc> {
  @override
  Widget build(BuildContext context) {
     int selectedIndex = 0;
    return Scaffold(
      backgroundColor: kOnSurfaceColor,
      appBar: AppBar(
        title: const Text(
          'Corpo docente',
          style: kTitle22,
        ),
        centerTitle: true,
        backgroundColor: kBack1,
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: selectedIndex,
      ),
      body: SingleChildScrollView(
      
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(17),
            child: const Column(
              children: [
                Align(
                  
                  alignment: Alignment.topCenter,
                  child: Text("Lista com informações dos docentes de ciência da computação", style: ktitle700, textAlign: TextAlign.center,),
                ),
                 SizedBox(height: 25,),              
                Contato(nome: "nome do professor", email: "nome1@gmail.com", area: "Física", logoCurso1: Assets.bcc, logoCurso2: Assets.alimentos , logoCurso3: Assets.agronomia, numeroDeIcons: 2,),
                 SizedBox(height: 20,),
                Contato(nome: "nome do professor", email: "nome1@gmail.com", area: "Engenharia de Alimentos", logoCurso1: Assets.bcc, logoCurso2: Assets.alimentos , logoCurso3: Assets.agronomia, numeroDeIcons: 1,),
                 SizedBox(height: 20,),
               
              
                
              ],
            ),
            ),
        ),
      ),
    );
  }
}