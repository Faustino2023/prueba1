import 'package:flutter/material.dart';
import 'package:prueba1/pages/acercade.dart';
import 'package:prueba1/pages/expanded.dart';
import 'package:prueba1/pages/flexible.dart';
import 'package:prueba1/pages/menu.dart';
import 'package:prueba1/pages/safearea.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  {
    runApp(const MyApp());
  }
  ;
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      theme: ThemeData(
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.deepPurple),
        useMaterial3: true,
      ),
      initialRoute: "/menu",
      routes: {
        "/acercade": (context) => Acercade(),
        "/expanded": (context) => ExpandedApp(),
        "/menu": (context) => Menu(),
        "/safearea": (context) => SafeareaApp(),
        "/flexible": (context) => const FlexibleWidget()
      },
      //home: const MyHomePage(title: 'Tabla de Categorías'),
    );
  }
}
