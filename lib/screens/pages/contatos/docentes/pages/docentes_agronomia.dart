import 'package:flutter/material.dart';
import 'package:thunderapp/assets/index.dart';
import 'package:thunderapp/screens/pages/contatos/components/contato.dart';
import 'package:thunderapp/shared/components/BottomNavigation.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class DocentesAgronomia extends StatefulWidget {
  const DocentesAgronomia({super.key});

  @override
  State<DocentesAgronomia> createState() => _DocentesAgronomiaState();
}

class _DocentesAgronomiaState extends State<DocentesAgronomia> {
  @override
  Widget build(BuildContext context) {
     int selectedIndex = 0;
    return Scaffold(
      backgroundColor: kOnSurfaceColor,
      appBar: AppBar(
        title: const Text(
          'Docentes de agronomia',
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
                  child: Text("lista com nomes da estrutura administrativa da ufape", style: ktitle700, textAlign: TextAlign.center,),
                ),
                 SizedBox(height: 25,),              
                Contato(nome: "Priscilla Vanubia Queiroz de Medeiros", email: "priscilla.medeiros@ufape.edu.br", area: "Desenho técnico", logoCurso1: Assets.agronomia, logoCurso2: Assets.agronomia , logoCurso3: Assets.agronomia, numeroDeIcons: 1,),
                 SizedBox(height: 20,),
                Contato(nome: "Fernando Ferreira da Silva Dias", email: "fernando.dias@ufape.edu.br", area: "Química", logoCurso1: Assets.agronomia, logoCurso2: Assets.alimentos , logoCurso3: Assets.agronomia, numeroDeIcons: 1,),
                 SizedBox(height: 20,),
                Contato(nome: "Alexandre Tavares da Rocha", email: "alexandre.rocha@ufape.edu.br", area: "Introdução a agronomia", logoCurso1: Assets.agronomia, logoCurso2: Assets.alimentos , logoCurso3: Assets.agronomia, numeroDeIcons: 1,),
                 SizedBox(height: 20,),
               
                Contato(nome: "Cibele Cardoso de Castro", email: "cibele.castro@ufape.edu.br", area: "Morfologia de fanerogamos", logoCurso1: Assets.agronomia, logoCurso2: Assets.alimentos , logoCurso3: Assets.agronomia, numeroDeIcons: 1,),
                 SizedBox(height: 20,),
               
                Contato(nome: "Alexandre Tavares da Rocha", email: "alexandre.rocha@ufape.edu.br", area: "Introdução a agronomia", logoCurso1: Assets.agronomia, logoCurso2: Assets.alimentos , logoCurso3: Assets.agronomia, numeroDeIcons: 1,),
                 SizedBox(height: 20,),
               
                
              ],
            ),
            ),
        ),
      ),
    );
  }
}