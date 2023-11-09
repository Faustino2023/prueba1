import 'package:flutter/material.dart';

class ExpandedApp extends StatelessWidget {
  const ExpandedApp({super.key});

  @override
  Widget build(BuildContext context) {
    const double height = 100;
    return Row(
      children: [
        Container(
          height: height,
          color: Colors.red,
          child: const Center(
            child: Text('Container 1'),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
              height: height,
              color: Colors.green,
              child: const Center(
                child: Text('Container 2'),
              )),
        ),
        Expanded(
          flex: 1,
          child: Container(
            height: height,
            color: Colors.blue,
            child: const Center(
              child: Text('Container 3'),
            ),
          ),
        ),
      ],
    );
  }
}
