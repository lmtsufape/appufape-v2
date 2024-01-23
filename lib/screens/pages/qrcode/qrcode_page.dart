import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:thunderapp/shared/constants/style_constants.dart';

class QrCodePage extends StatefulWidget {
  const QrCodePage({super.key});

  @override
  State<QrCodePage> createState() => _QrCodePageState();
}

class _QrCodePageState extends State<QrCodePage> {
  String rota = "";
  String teste = "apenas testando";

  readQRCode() async {
    String rota = await FlutterBarcodeScanner.scanBarcode(
      "#FFFFFF",
      "Cancelar",
      false,
      ScanMode.QR,
    );
    setState(() => rota = rota != '-1' ? rota : 'Não validado');
  }
void renderizarTela(String code) {
    switch(rota) {
      case "1": print("pegando");
      break;
      case "2": print(code);
      break;
    }
}
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kBack1,
        centerTitle: true,
        title: Text("Onde estou?"),
      ),
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (rota != "")
              Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Text(
                  'rota: $rota',
                  style: const TextStyle(fontSize: 30),
                ),
              ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 80),
                backgroundColor: kBack1
              ),
              onPressed: readQRCode,
              icon: const Icon(Icons.qr_code),
              label: const Text('Validar'),
            ),
            ElevatedButton.icon(
              style: ElevatedButton.styleFrom(
                minimumSize: const Size(200, 80),
                backgroundColor: kBack1
              ),
              onPressed: (() => renderizarTela(rota)),
              icon: const Icon(Icons.qr_code),
              label: const Text('Validar'),
            ),
          ],
        ),
        )
      ),
    );
  }
}