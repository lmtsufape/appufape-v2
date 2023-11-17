import 'package:flutter/material.dart';
import 'package:thunderapp/screens/pages/components/information_course.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class BccPage extends StatelessWidget {
  const BccPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: kOnSurfaceColor,
        appBar: AppBar(
          title: const Text('Ciências da Computação', style: kTitle22),
          centerTitle: true,
          backgroundColor: kBack1,
        ),
        body: const InformationCourse(grau: 'Bacharelado', turno: "Noite", duracao: "4 anos", vagas: "80 vagas (40 por semestre)", ingresso: "SISU",paginaDestino: "http://www.bcc.ufape.edu.br/",));
  }
}


