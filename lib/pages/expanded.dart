import 'package:flutter/material.dart';

void main() {
  runApp(ExpandedApp());
}

class ExpandedApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Ejmeplo de Expanded'),
        ),
        body: Row(
          children: <Widget>[
            Expanded(
              child: Container(
                color: Colors.red,
                height: 100,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.green,
                height: 100,
              ),
            ),
            Expanded(
              child: Container(
                color: Colors.blue,
                height: 100,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
