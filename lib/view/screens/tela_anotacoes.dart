import 'package:flutter/material.dart';
import '../components/anotacoes_anotacoes_salvas.dart';
import '../components/anotacoes_opcoes.dart';
import '../components/anotacoes_nova_anotacao.dart';
import '../components/app_bar.dart';

class TelaAnotacoes extends StatefulWidget {
  const TelaAnotacoes({super.key});

  @override
  State<TelaAnotacoes> createState() => _TelaAnotacoesState();
}

class _TelaAnotacoesState extends State<TelaAnotacoes> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
      backgroundColor: const Color.fromRGBO(51, 51, 51, 1),
      title: const Text(
        'Anotações',
        style: TextStyle(
          fontSize: 36,
          color: Colors.white,
          fontWeight: FontWeight.normal
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            AnotacoesContainer(),
            AnotacoesSalvas(),
            OpcoesContainer(),
          ],
        )
      ),
    );
  }
}