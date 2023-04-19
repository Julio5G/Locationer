// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class NesteMomento extends StatefulWidget {
  final Widget widgetsInContainer;

  const NesteMomento({
    super.key,
    required this.widgetsInContainer,
  });

  @override
  State<NesteMomento> createState() => _NesteMomentoState();
}

class _NesteMomentoState extends State<NesteMomento> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Neste momento',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.normal,
          ),
        ),
        Container(
          width: double.infinity,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                widget.widgetsInContainer,
              ],
            ),
          ),
        ),
      ],
    );
  }
}