import 'package:flutter/material.dart';

void main() => runApp(SafeareaApp());

class SafeareaApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: BodyWidget(),
      ),
    );
  }
}

class BodyWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.topLeft,
      child: SafeArea(
        left: true,
        top: true,
        right: true,
        bottom: true,
        minimum: const EdgeInsets.all(16.0),
        child: Text(
            'Mi widget: este es mi widget. Tiene algún contenido que no quiero.'
            'bloqueado por ciertos fabricantes que agregan muescas, agujeros y esquinas redondeadas.'),
      ),
    );
  }
}
