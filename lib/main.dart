import 'package:flutter/material.dart';
import 'package:tinyhabit/pages/Home.dart';

void main() => runApp(App());

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TinyHabit',
      home: HomePage(),
    );
  }
}