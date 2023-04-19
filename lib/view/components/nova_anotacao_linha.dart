import 'package:flutter/material.dart';

class Linha extends StatefulWidget {
  const Linha({super.key});

  @override
  State<Linha> createState() => _LinhaState();
}

class _LinhaState extends State<Linha> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        top: 10,
        bottom: 10,
      ),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 1,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
    );
  }
}