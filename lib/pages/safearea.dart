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
    return const Align(
      alignment: Alignment.topLeft,
      child: SafeArea(
        left: true,
        top: true,
        right: true,
        bottom: true,
        minimum: EdgeInsets.all(16.0),
        child: Text(
            'SafeArea es un widget de servicio, es decir que no tiene presencia visual, o mejor dicho, el usuario no puede observarlo.'
            '¿Cuál es la función de Flutter Safe Area?'
            'Cuando trabajamos con Flutter lo hacemos en la mayoría de los casos porque vamos a programar para varias plataformas, para Android y para iOS.'
            'Tenemos que ser conscientes de que esto implica un importante detalle, nuestra aplicación será usada en múltiples dispositivos que son muy diferentes en tamaño y forma. Un ejemplo claro es el uso reciente de los llamados «notch» esa pequeña protuberancia en '
            'el borde superior que entra a la pantalla y divide la barra de notificaciones en 2 partes.'
            'Cuando programamos y tenemos una AppBar o barra de título personalizada, sin duda este «notch» va a estorbar y parte de la barra de título no se mostrará. Es aquí cuando entra en juego nuestro querido widget SafeArea.'),
      ),
    );
  }
}
