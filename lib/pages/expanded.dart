import 'package:flutter/material.dart';

void main() {
  runApp(ExpandedApp());
}

class ExpandedApp extends StatelessWidget {
  const ExpandedApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Row(
          children: [
            Container(
              padding: EdgeInsets.all(40),
              color: Colors.lightBlue,
              child: Text('A', style: TextStyle(fontSize: 20)),
            ),
            Container(
              padding: EdgeInsets.all(40),
              color: Colors.amber,
              child: Text('B', style: TextStyle(fontSize: 20)),
            ),
            Container(
              padding: EdgeInsets.all(40),
              color: Colors.redAccent,
              child: Text('C', style: TextStyle(fontSize: 20)),
            ),
          ],
        ),
      ),
    );
  }
}
