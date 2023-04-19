import 'package:flutter/material.dart';

class SquareRounded extends StatefulWidget {
  const SquareRounded({super.key});

  @override
  State<SquareRounded> createState() => _SquareRoundedState();
}

class _SquareRoundedState extends State<SquareRounded> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 40,
      height: 40,
      child: Column(
        children: [
          Row(
            children: const [
              Icon(
                Icons.square_rounded,
                size: 20,
              ),
              Icon(
                Icons.square_rounded,
                size: 20,
              ),
            ],
          ),
          Row(
            children: const [
              Icon(
                Icons.square_rounded,
                size: 20,
              ),
              Icon(
                Icons.square_rounded,
                size: 20,
              ),
            ],
          ),
        ],
      ),
    );
  }
}