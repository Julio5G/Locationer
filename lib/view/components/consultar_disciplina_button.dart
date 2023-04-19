import 'package:flutter/material.dart';
import 'button.dart';

class ButtonContainer extends StatefulWidget {
  const ButtonContainer({super.key});

  @override
  State<ButtonContainer> createState() => _ButtonContainerState();
}

class _ButtonContainerState extends State<ButtonContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 100,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Button(
          color: const Color.fromRGBO(178, 0, 0, 1), 
          onPressed: () {
            
          }, 
          text: const Text(
            "Consultar",
            style: TextStyle(
              fontSize: 24, 
              color: Colors.white
            ),
          ),
        ),
      )
    );
  }
}