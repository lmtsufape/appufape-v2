import 'package:flutter/material.dart';
import 'package:thunderapp/screens/pages/components/information_course.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class LetrasPage extends StatelessWidget {
  const LetrasPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOnSurfaceColor,
      appBar:  AppBar(
        title: const Text('Letras', style: kTitle22),
        centerTitle: true,
         backgroundColor: kBack1,
      ),
      body:  InformationCourse(grau: "Licenciatura", turno: "Noturno", duracao: "4.5 anos", vagas: "80 vagas (40 por semestre)", ingresso: "SISU", paginaDestino:Uri.parse("http://ufape.edu.br/CCLLE.CAMUS")),
    );
  }
}