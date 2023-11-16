import 'package:flutter/material.dart';
import 'package:thunderapp/screens/pages/components/information_course.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class EngAlimentosPage extends StatelessWidget {
  const EngAlimentosPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOnSurfaceColor,
      appBar:  AppBar(
        title: const Text('Engenharia de Alimentos', style: kTitle22),
        centerTitle: true,
         backgroundColor: kBack1,
      ),
      body: const InformationCourse(grau: "Bacharelado", turno: "integral", duracao: "5 anos", vagas: "80 vagas (40 por semestre)", ingresso: "SISU",paginaDestino: "http://ufape.edu.br/CCBEL.CAMUS"),
    );
  }
}