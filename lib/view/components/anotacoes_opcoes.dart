import 'package:flutter/material.dart';

class OpcoesContainer extends StatefulWidget {
  const OpcoesContainer({super.key});

  @override
  State<OpcoesContainer> createState() => _OpcoesContainerState();
}

class _OpcoesContainerState extends State<OpcoesContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.15,            
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.white,
          width: 3,
        ),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: 100,
            height: 100,
            child: GestureDetector(
              child: const Icon(
                Icons.search,
                color: Colors.white,
                size: 100,
              ),
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: GestureDetector(
              child: const Icon(
                Icons.push_pin,
                color: Colors.white,
                size: 100,
              ),
            ),
          ),
          SizedBox(
            width: 100,
            height: 100,
            child: GestureDetector(
              child: const Icon(
                Icons.delete,
                color: Colors.white,
                size: 100,
              ),
            ),
          ),
        ],
      )
    );
  }
}