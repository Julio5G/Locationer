import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/button.dart';
import '../components/nova_anotacao_linha.dart';

class TelaNovaAnotacao extends StatefulWidget {
  const TelaNovaAnotacao({super.key});

  @override
  State<TelaNovaAnotacao> createState() => _TelaNovaAnotacaoState();
}

class _TelaNovaAnotacaoState extends State<TelaNovaAnotacao> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
      backgroundColor: const Color.fromRGBO(51, 51, 51, 1),
      title: const Text(
        'Nova Anotação',
        style: TextStyle(
          fontSize: 36,
          color: Colors.white,
          fontWeight: FontWeight.normal
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Título:',
              style: TextStyle(
                fontSize: 24,
                color: Colors.white,
                fontWeight: FontWeight.normal
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white,
                  width: 3,
                ),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    Column(
                      children: const [
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        Linha(),
                        SizedBox(
                          height: 20,
                        ),
                      ],
                    ),
                    Button(
                      color: const Color.fromRGBO(178, 0, 0, 1),
                      onPressed: () {
                        
                      },
                      text: const Text(
                        'Salvar',
                        style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.normal
                        ),
                      ),
                    ),
                  ],
                ),
              )
            )
          ],
        ),
      ),
    );
  }
}