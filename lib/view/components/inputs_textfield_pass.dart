import 'package:flutter/material.dart';

class InputTextFieldPass extends StatefulWidget {
  final bool obscureTextOption;

  const InputTextFieldPass({
    super.key, 
    required this.obscureTextOption
  });

  @override
  State<InputTextFieldPass> createState() => _InputTextFieldPassState();
}

class _InputTextFieldPassState extends State<InputTextFieldPass> {
  bool obscureTextOption = true;
  
  @override
  void initState() {
    obscureTextOption = widget.obscureTextOption;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
        obscureText: obscureTextOption,
        style: const TextStyle(
          fontSize: 22,
        ),
        decoration: InputDecoration(
          suffixIcon: IconButton(
            icon: const Icon(Icons.remove_red_eye),
            onPressed: () {
              setState(() {
                obscureTextOption = !obscureTextOption;
              });
            },
          ),
          labelStyle: const TextStyle(fontSize: 18),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          filled: true,
          fillColor: Colors.white,
        ));
  }
}
