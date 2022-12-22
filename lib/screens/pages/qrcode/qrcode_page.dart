import 'package:appufape/components/utils/vertical_spacer_box.dart';
import 'package:appufape/shared/constants/app_enums.dart';
import 'package:appufape/shared/constants/style_constants.dart';
import 'package:flutter/material.dart';
import 'package:qr_code_scanner/qr_code_scanner.dart';

class QrCodePage extends StatefulWidget {
  const QrCodePage({Key? key}) : super(key: key);

  @override
  State<QrCodePage> createState() => _QrCodePageState();
}

class _QrCodePageState extends State<QrCodePage> {
  final GlobalKey _gLobalkey = GlobalKey();
  QRViewController? controller;
  Barcode? result;
  void qr(QRViewController controller) {
    this.controller = controller;
    controller.scannedDataStream.listen((event) {
      setState(() {
        result = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kTextButtonColor,
      ),
      body: Container(
        color: kTextButtonColor,
        width: size.width,
        padding: const EdgeInsets.all(17),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              // ignore: sized_box_for_whitespace
              const VerticalSpacerBox(size: SpacerSize.huge),
              const VerticalSpacerBox(size: SpacerSize.huge),
              const VerticalSpacerBox(size: SpacerSize.huge),
              const VerticalSpacerBox(size: SpacerSize.huge),
              const VerticalSpacerBox(size: SpacerSize.huge),
              const VerticalSpacerBox(size: SpacerSize.huge),

              SizedBox(
                height: 240,
                width: 280,
                child: QRView(key: _gLobalkey, onQRViewCreated: qr),
              ),

              const VerticalSpacerBox(size: SpacerSize.huge),
              const VerticalSpacerBox(size: SpacerSize.huge),
              const VerticalSpacerBox(size: SpacerSize.huge),
              Center(
                child: (result != null)
                    ? Text('${result!.code}')
                    : const Text('Scan a code'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
