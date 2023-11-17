import 'package:flutter/material.dart';
import 'package:thunderapp/screens/pages/components/information_course.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class AgronomiaPage extends StatelessWidget {
  const AgronomiaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOnSurfaceColor,
      appBar:  AppBar(
        title: const Text('Agronomia', style: kTitle22),
        centerTitle: true,
         backgroundColor: kBack1,
      ),
      body: const InformationCourse(grau: "Bacharelado",turno: "Manhã e tarde", duracao: "5 anos", vagas: "80 vagas (40 por semestre)", ingresso: "SISU", paginaDestino: "http://ufape.edu.br/CCBAG.CAMUS",),
    );
  }
}