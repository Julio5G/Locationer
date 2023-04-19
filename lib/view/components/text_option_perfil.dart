import 'package:flutter/material.dart';

class OptionText extends StatelessWidget {
  final String stringText;

  const OptionText({
    super.key,
    required this.stringText,
  });
  
  @override
  Widget build(BuildContext context) {
    return Text(
      stringText,
      style: const 
        TextStyle(
          fontSize: 24, 
          color: Colors.black
        ),
    );
  }
}