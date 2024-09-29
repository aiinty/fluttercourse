import 'package:flutter/material.dart';

final _controller = TextEditingController();

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

class InputForm extends StatefulWidget {
  const InputForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return _InputFormState();
  }
}

class _InputFormState extends State<InputForm> {
  String _text = "Здесь будет ваш текст...";

  _changeText(String input) {
    setState(() {
      _text = input;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(_text),
        TextField(
          controller: _controller,
          decoration: const InputDecoration(hintText: "Введите текст"),
        ),
        Padding(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: ElevatedButton(
                onPressed: () {
                  _changeText(_controller.text);
                },
                child: const Text("Отобразить текст")))
      ],
    );
  }
}
