import 'package:flutter/material.dart';

class Button extends StatefulWidget {
  final Function() onPressed;
  final Widget text;
  final Color color;

  const Button({
    super.key, 
    required this.color,
    required this.onPressed, 
    required this.text
  });

  @override
  State<Button> createState() => _ButtonState();
}

class _ButtonState extends State<Button> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 68,
      width: double.infinity,
      child: TextButton(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all<TextStyle>(
            const TextStyle(fontSize: 24),
          ),
          backgroundColor: MaterialStateProperty.all<Color>(
            widget.color,
          ),
          shape:
              MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        onPressed: widget.onPressed,
        child: widget.text,
      )
    );
  }
}