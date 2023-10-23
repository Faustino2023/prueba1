import 'package:flutter/material.dart';

void main() {
  runApp(Acercade());
}

class Acercade extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SafeArea(
        child: Column(children: <Widget>[
          SizedBox(height: 10),
          Padding(padding: EdgeInsets.all(1.0)),
          SizedBox(height: 10),
          Text(
            textAlign: TextAlign.center,
            'TEMA:',
            style: TextStyle(fontSize: 30, color: Colors.blue),
          ),
          SizedBox(height: 10),
          Text(
            textAlign: TextAlign.center,
            '- Safearea',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Text(
            textAlign: TextAlign.center,
            '- Explended',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          Text(
            textAlign: TextAlign.center,
            '- Flexible',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
          SizedBox(height: 10),
          Text(
            textAlign: TextAlign.center,
            'Andrea Michell Faustino Hernandez',
            style: TextStyle(fontSize: 30),
          ),
          SizedBox(height: 10),
          Text(
            textAlign: TextAlign.center,
            'DSW21-B',
            style: TextStyle(fontSize: 30),
          )
        ]),
      ),
    );
  }
}
