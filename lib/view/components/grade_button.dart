import 'package:flutter/material.dart';

class ButtonModal extends StatefulWidget {
  final Function onPressed;
  final String text;
  const ButtonModal({
    super.key,
    required this.onPressed,
    required this.text,
  });

  @override
  State<ButtonModal> createState() => _ButtonModalState();
}

class _ButtonModalState extends State<ButtonModal> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: double.infinity,
      child: TextButton(
        onPressed: () {
          widget.onPressed();
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(
            Colors.white,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
            ),
          ),
        ),
        child: Text(
          widget.text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.black,
            fontWeight: FontWeight.normal
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}