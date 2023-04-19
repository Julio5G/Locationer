import 'package:flutter/material.dart';
import 'inputs_decoration.dart';

class InputTextField extends StatefulWidget {
  const InputTextField({super.key});

  @override
  State<InputTextField> createState() => _InputTextFieldState();
}

class _InputTextFieldState extends State<InputTextField> {

  @override
  Widget build(BuildContext context) {
    return TextField(
        style: const TextStyle(
          fontSize: 22,
        ),
        decoration: customInputDecoration()
      );
  }
}
