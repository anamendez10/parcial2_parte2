import 'package:flutter/material.dart';

class MyTextInput extends StatelessWidget {
  const MyTextInput({super.key, required this.inputController, required this.label});

final TextEditingController inputController;
final String label;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: inputController,
      keyboardType: TextInputType.number,
              decoration: InputDecoration(
                border: const UnderlineInputBorder(),
                label: Text('Numero 1'),
                labelStyle: TextStyle(fontSize: 18, color: Colors.black87),
                labelText: label,
              )
            );
  }
}