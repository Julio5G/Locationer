import 'package:flutter/material.dart';

class AnotacoesContainer extends StatefulWidget {
  const AnotacoesContainer({super.key});

  @override
  State<AnotacoesContainer> createState() => _AnotacoesContainerState();
}

class _AnotacoesContainerState extends State<AnotacoesContainer> {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Nova Anotação',
          style: TextStyle(
            fontSize: 24, 
            color: Colors.white
            )
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height * 0.2,                
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 3,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: IconButton(
            icon: const Icon(
              Icons.add_rounded,
              color: Colors.white,
              size: 150,
            ),
            onPressed: () {
              Navigator.pushNamed(context, 'nova_anotacao');
            },
          ),
        )
      ],
    );
  }
}