import 'package:flutter/material.dart';

import 'package:prueba1/pages/acercade.dart';
import 'package:prueba1/pages/expanded.dart';
import 'package:prueba1/pages/flexible.dart';
// import 'package:prueba1/pages/nosafe.dart';

import 'package:prueba1/pages/safearea.dart';

class Menu extends StatefulWidget {
  const Menu({super.key});

  @override
  State<Menu> createState() => _MenuPageState();
}

class _MenuPageState extends State<Menu> {
  //logica de la app

  int _itemSelect = 0;
  _onItemSelect(int pos) {
    Navigator.pop(context); // close the drawer
    setState(() {
      _itemSelect = pos;
    });
  }

  _getItemDrawer(int position) {
    switch (position) {
      case 0:
        return Acercade();
      case 1:
        return SafeareaApp();
      case 2:
        return ExpandedApp();
      case 3:
        return const FlexibleWidget();
      case 4:
      // return Sinsafearea();
      // break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exposición'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            const DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Presentación',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: const Text(
                'Presentación',
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.amber),
              ),
              onTap: () {
                _onItemSelect(0);
              },
            ),
            ListTile(
              leading: const Icon(Icons.arrow_forward_ios),
              title: const Text('Ejemplo de SAFEAREA'),
              onTap: () {
                _onItemSelect(1);
              },
            ),
            const Divider(
              color: Colors.red,
            ),
            ListTile(
              leading: const Icon(Icons.arrow_forward_ios),
              title: Text('Ejemplo de EXPANDED'),
              onTap: () {
                _onItemSelect(2);
              },
            ),
            const Divider(
              color: Color.fromARGB(255, 46, 44, 158),
            ),
            const Divider(
              color: Color.fromARGB(255, 31, 79, 141),
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: const Text('Ejemplo de FLEXIBLE'),
              onTap: () {
                _onItemSelect(3);
              },
            ),
            const Divider(
              color: Color.fromARGB(255, 38, 36, 182),
            ),
          ],
        ),
      ),
      body: _getItemDrawer(_itemSelect),
    );
  }
}
