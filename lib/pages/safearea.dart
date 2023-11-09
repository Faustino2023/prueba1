import 'package:flutter/material.dart';

void main() => runApp(const SafeareaApp());

class SafeareaApp extends StatelessWidget {
  const SafeareaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: SafeAreaSample(),
    );
  }
}

class SafeAreaSample extends StatelessWidget {
  final icons = [
    Icons.radio,
    Icons.star,
    Icons.cake,
    Icons.brush,
    Icons.update,
    Icons.favorite,
    Icons.add_alarm,
    Icons.favorite,
    Icons.verified_user,
    Icons.favorite,
    Icons.add_alarm,
    Icons.favorite,
    Icons.verified_user,
    Icons.favorite,
    Icons.add_alarm,
    Icons.favorite,
    Icons.verified_user,
    Icons.favorite,
    Icons.verified_user,
    Icons.favorite,
    Icons.add_alarm,
    Icons.favorite,
    Icons.verified_user,
    Icons.radio,
    Icons.star,
    Icons.cake,
    Icons.brush,
    Icons.update,
    Icons.favorite,
    Icons.add_alarm,
    Icons.favorite,
    Icons.verified_user,
    Icons.favorite,
    Icons.add_alarm,
    Icons.favorite,
    Icons.favorite,
    Icons.add_alarm,
    Icons.favorite,
    Icons.verified_user,
    Icons.favorite,
    Icons.verified_user,
    Icons.favorite,
    Icons.add_alarm,
    Icons.favorite,
    Icons.verified_user,
    Icons.radio,
    Icons.star,
    Icons.cake,
    Icons.brush,
    Icons.update,
    Icons.favorite,
    Icons.add_alarm,
    Icons.favorite,
    Icons.verified_user,
    Icons.favorite,
    Icons.add_alarm,
    Icons.favorite,
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SafeArea(
          //
          child: GridView.builder(
            itemCount: icons.length,
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 5,
            ),
            itemBuilder: (context, index) {
              return SafeArea(
                child: Card(
                  child: Icon(icons[index], size: 30),
                ),
              );
            },
          ),
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
