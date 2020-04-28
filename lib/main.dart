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

    final String qr_text = '123456';

    return Scaffold (
      appBar: AppBar(
         title: Text('BS QR-Code Reader'),
      ),
       body: Center(
        child: Column(
          children: <Widget>[
            Text("Codigo Gerado: $qr_text"),

            QrImage(
              data: qr_text,
            ),
          ],
        ),
      ),
    );
    }
}