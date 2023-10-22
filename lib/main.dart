import 'package:flutter/material.dart';
import 'package:prueba1/pages/acercade.dart';
import 'package:prueba1/pages/expanded.dart';
import 'package:prueba1/pages/menu.dart';

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
        colorScheme: ColorScheme.fromSwatch(primarySwatch: Colors.blue),
        useMaterial3: true,
      ),
      initialRoute: "/menu",
      routes: {
        "/acercade": (context) => Acercade(),
        "/expanded": (context) => const ExpandedApp(),

        "/menu": (context) => Menu(),
        // "/principal": (context) => const Principal(),
        // "/update": (context) => const EditCategoria()
      },
      //home: const MyHomePage(title: 'Tabla de Categorías'),
    );
  }
}
