import 'package:flutter/material.dart';
import 'package:thunderapp/assets/index.dart';
import 'package:thunderapp/screens/pages/contatos/components/contato.dart';
import 'package:thunderapp/shared/components/bottom_navigation.dart';
import '../../../../shared/constants/style_constants.dart';

class TecnicosPage extends StatelessWidget {
  const TecnicosPage({super.key});

  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Técnico administrativos',
          style: kTitle22,
        ),
        centerTitle: true,
        backgroundColor: kBack1,
      ),
      bottomNavigationBar: BottomNavigation(
        selectedIndex: selectedIndex,
      ),
      backgroundColor: kOnSurfaceColor,
      body: SingleChildScrollView(
      
        child: Center(
          child: Container(
            padding: const EdgeInsets.all(17),
            child:  const Column(
              children: [
                Align(
                  alignment: Alignment.topCenter,
                  child: Text("Lista de nomes e E-mails de Docentes da UFAPE", style: ktitle700,textAlign: TextAlign.center),
                ),
                 SizedBox(height: 25,),              
                Contato(nome: "nome do professor", email: "nome 1@gmail.com", area: "Física", logoCurso1: Assets.bcc, logoCurso2: Assets.alimentos , logoCurso3: Assets.agronomia,numeroDeIcons: 2),
                 SizedBox(height: 20,),
                Contato(nome: "nome do professor", email: "nome 1@gmail.com", area: "Engenharia de Alimentos", logoCurso1: Assets.bcc, logoCurso2: Assets.alimentos , logoCurso3: Assets.agronomia,numeroDeIcons: 2),
                 SizedBox(height: 20,),
                Contato(nome: "nome do professor", email: "nome 1@gmail.com", area: "Coordenador: agronomia", logoCurso1: Assets.bcc, logoCurso2: Assets.alimentos , logoCurso3: Assets.agronomia,numeroDeIcons: 2),
                 SizedBox(height: 20,),
                Contato(nome: "nome do professor", email: "nome 1@gmail.com", area: "nome da area", logoCurso1: Assets.bcc, logoCurso2: Assets.alimentos , logoCurso3: Assets.agronomia,numeroDeIcons: 2),
                 SizedBox(height: 20,),
                  Contato(nome: "nome do professor", email: "nome 1@gmail.com", area: "nome da area", logoCurso1: Assets.bcc, logoCurso2: Assets.alimentos , logoCurso3: Assets.agronomia,numeroDeIcons: 2),
                 SizedBox(height: 20,),
                  Contato(nome: "nome do professor", email: "nome 1@gmail.com", area: "nome da area", logoCurso1: Assets.bcc, logoCurso2: Assets.alimentos , logoCurso3: Assets.agronomia,numeroDeIcons: 2),
                 SizedBox(height: 20,),
              
                
              ],
            ),
            ),
        ),
      ),
    );
  }
}
// Lista de nomes e e-mails de técnicos-administrativos da UFAPE