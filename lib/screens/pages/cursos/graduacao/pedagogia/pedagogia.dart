import 'package:flutter/material.dart';
import 'package:thunderapp/screens/pages/components/information_course.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class PedagogiaPage extends StatelessWidget {
  const PedagogiaPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kOnSurfaceColor,
      appBar:  AppBar(
        title: const Text('Pedagogia', style: kTitle22),
        centerTitle: true,
         backgroundColor: kBack1,
      ),
      body: const InformationCourse(grau: "Licenciatura", turno: "Manhã e tarde", duracao: "4.5 anos", vagas: "80 vagas (40 por semestre)", ingresso: "SISU", paginaDestino: "http://ufape.edu.br/CCLPE.CAMUS"),
    );
  }
}