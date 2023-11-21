import 'package:flutter/material.dart';
import 'package:thunderapp/screens/pages/contatos/components/contato.dart';
import 'package:thunderapp/shared/components/BottomNavigation.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class DocentesPage extends StatelessWidget {
  const DocentesPage({super.key});

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
            child:  const Column(
              children: [
                Text("Lista de nomes e E-mails ", style: ktitle700),
                Text("de Docentes da UFAPE", style: ktitle700),
                 SizedBox(height: 25,),              
                Contato(nome: "nome do professor", email: "nome 1@gmail.com", area: "engenharia mecatronica",),
                 SizedBox(height: 20,),
                Contato(nome: "nome do professor 2", email: "email@gmail.com", area: "Fisica"),  
                 SizedBox(height: 20,),
                Contato(nome: "nome do professor 2", email: "email@gmail.com", area: "Química"),  
                 SizedBox(height: 20,),
                
              ],
            ),
            ),
        ),
      ),
    );
  }
}
