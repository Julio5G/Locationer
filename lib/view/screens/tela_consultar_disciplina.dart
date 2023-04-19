import 'package:flutter/material.dart';
import '../components/consultar_disciplina_button.dart';
import '../components/consultar_disciplina_turno.dart';
import '../components/consultar_disciplina_curso_container.dart';
import '../components/app_bar.dart';
import '../components/consultar_disciplina_semestre.dart';

class TelaConsultarDisciplina extends StatefulWidget {
  const TelaConsultarDisciplina({super.key});

  @override
  State<TelaConsultarDisciplina> createState() => _TelaConsultarDisciplinaState();
}

class _TelaConsultarDisciplinaState extends State<TelaConsultarDisciplina> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
      backgroundColor: const Color.fromRGBO(51, 51, 51, 1),
      title: const Text(
        'Consultar\nDisciplina',
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.normal
        ),
        textAlign: TextAlign.center,
      ),
      body: SizedBox(
        child: Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              CursoContainer(),
              TurnoContainer(),
              SemestreContainer(),
              ButtonContainer(),
            ],
          ),
        ),
      ),
    );
  }
}