import 'package:flutter/material.dart';

import 'package:prueba1/pages/acercade.dart';
import 'package:prueba1/pages/expanded.dart';

class Menu extends StatefulWidget {
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
        break;
      case 1:
        return ExpandedApp();
//  break;
//         case 2:  return Ejemplo2();
//   break;
//           case 3: return Ejemplo3();
//           break;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Exposición'),
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
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
              leading: Icon(Icons.person),
              title: Text(
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
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('SAFEAREA'),
              onTap: () {
                _onItemSelect(1);
              },
            ),
            Divider(
              color: Colors.red,
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('EXPANDED'),
              onTap: () {
                _onItemSelect(2);
              },
            ),
            Divider(
              color: Color.fromARGB(255, 46, 44, 158),
            ),
            Divider(
              color: Color.fromARGB(255, 31, 79, 141),
            ),
            ListTile(
              leading: Icon(Icons.arrow_forward_ios),
              title: Text('FLEXIBLE'),
              onTap: () {
                _onItemSelect(3);
              },
            ),
            Divider(
              color: Color.fromARGB(255, 38, 36, 182),
            ),
          ],
        ),
      ),
      body: _getItemDrawer(_itemSelect),
    );
  }
}
