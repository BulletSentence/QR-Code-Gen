import 'package:flutter/material.dart';
import 'package:qr_flutter/qr_flutter.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Bullet QR-Code Reader',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    final String qr_text = 'Almeida';

    return Scaffold (
      appBar: AppBar(
         title: Text('BS QR-Code Reader'),
      ),
       body: Center(
        child: Column(
          children: <Widget>[
            SizedBox(height: 16,),
            Text("Codigo Gerado: $qr_text",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
              ),
            ),
            SizedBox(height: 16,),
            QrImage(
              data: qr_text,
              size: 300,
              gapless: true,
              errorCorrectionLevel: QrErrorCorrectLevel.Q,
            ),
          ],
        ),
      ),
    );
    }
}