import 'package:flutter/material.dart';
import 'input_form.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        home: Scaffold(
            body: Padding(
      padding: EdgeInsets.symmetric(vertical: 16, horizontal: 32),
      child: InputForm(),
    )));
  }
}
