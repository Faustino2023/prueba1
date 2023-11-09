import 'package:flutter/material.dart';

void main() => runApp(SafeareaApp());

class SafeareaApp extends StatelessWidget {
  const SafeareaApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Safearea',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeAreaSample(),
    );
  }
}

class SafeAreaSample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        // Ver lista zona segura
        child: ListView(
          children: List.generate(
              120,
              (i) => Text(
                    '$i Bienvenidos',
                    style: const TextStyle(fontSize: 30, color: Colors.white),
                  )),
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
