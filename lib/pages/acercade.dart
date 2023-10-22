import 'package:flutter/material.dart';

void main() {
  runApp(Acercade());
}

class Acercade extends StatelessWidget {
  get mainAxisAlignment => null;

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(children: <Widget>[
          SizedBox(height: 50),
          Padding(padding: EdgeInsets.all(1.0)),
          Text(
            textAlign: TextAlign.center,
            'ANDREA MICHELL FAUSTINO HERNANDEZ',
            style: TextStyle(fontSize: 15),
          ),
          SizedBox(height: 30),
          Text(
            textAlign: TextAlign.center,
            'DSW21-B',
            style: TextStyle(fontSize: 15),
          )
        ]),
      ),
    );
  }
}
