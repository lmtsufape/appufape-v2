import 'package:flutter/material.dart';
import 'package:pdfx/pdfx.dart';
import 'package:thunderapp/assets/index.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';
import 'package:url_launcher/url_launcher.dart';

class CalendarioPage extends StatefulWidget {
  const CalendarioPage({super.key});

  @override
  State<CalendarioPage> createState() => _CalendarioPageState();
}

class _CalendarioPageState extends State<CalendarioPage> {
  late PdfControllerPinch pdfControllerPinch;
  int totalPagesAcount = 0, currentpage = 1;

final Uri linkPdfDownload = Uri.parse("http://ufape.edu.br/sites/default/files/2024-01/Calend%C3%A1rio%202023%20atualizado%20em%2008012024.pdf");


  @override
  void initState(){
    super.initState();
    pdfControllerPinch = PdfControllerPinch(document: PdfDocument.openAsset(Assets.pdfCalendarioAcademico));
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: kBack1,
        title: const Text("Calendário acadêmico"),
        
      ),
      body: Stack(
        children: [
          _buildUi(),
          Positioned(
            bottom: 20,
            right: 30,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: kBack1,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20.0), // Ajuste o raio conforme necessário
                ),
                padding: const EdgeInsets.all(20),
                elevation: 5
              ),
              onPressed: (() => launchUrl(linkPdfDownload)), 
              child:const Icon(Icons.download,size: 30, color: Color.fromARGB(255, 255, 255, 255),)
              )
              )
        ],
      ) ,
    );
  }

  Widget _buildUi() {
    return Column(
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text("Total de páginas:  $totalPagesAcount"),
            IconButton(
              onPressed: (() {
                pdfControllerPinch.previousPage(duration: const Duration(milliseconds: 300,), curve: Curves.linear);
              }),
               icon: const Icon(Icons.arrow_back)
            ),
            Text("Página atual: $currentpage"),
            IconButton(
              onPressed: (() {
                pdfControllerPinch.nextPage(duration: const Duration(milliseconds: 300), curve: Curves.linear);
              }),
               icon: const Icon(Icons.arrow_forward)
            )
      ],
        ),
        _pdfview()
      ],
    );
  }
  Widget _pdfview() {
    return Expanded(
      child: PdfViewPinch(
        scrollDirection: Axis.vertical,
        controller: pdfControllerPinch,
        onDocumentLoaded: (doc) {
          setState(() {
            totalPagesAcount = doc.pagesCount;
          });
        },
        onPageChanged: (page) {
          setState(() {
            currentpage = page;
          });
        },
        
        ),
      
    );
  }
}

