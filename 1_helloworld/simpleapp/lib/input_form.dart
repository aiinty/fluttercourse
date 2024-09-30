import 'package:flutter/material.dart';

class InputForm extends StatefulWidget {
  const InputForm({super.key});

  @override
  State<StatefulWidget> createState() {
    return _InputFormState();
  }
}

class _InputFormState extends State<InputForm> {
  String _text = "Здесь будет ваш текст...";
  final _controller = TextEditingController();

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
