import 'package:flutter/material.dart';
import 'package:locationer/view/components/dialog.dart';
import '../components/app_bar.dart';
import '../components/grade_button.dart';

class TelaGradeCompleta extends StatefulWidget {
  const TelaGradeCompleta({super.key});

  @override
  State<TelaGradeCompleta> createState() => _TelaGradeCompletaState();
}

class _TelaGradeCompletaState extends State<TelaGradeCompleta> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
      backgroundColor: const Color.fromRGBO(51, 51, 51, 1),
      title: const Text(
        'Grade Completa',
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.normal
        ),
        textAlign: TextAlign.center,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
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
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: const [
                        Text(
                          "4° Semestre",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                        Text(
                          "Manhã",
                          style: TextStyle(fontSize: 24, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20
                ),
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.65,
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
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ButtonModal(
                          onPressed: () {
                            showDialogBox(
                              context,
                              "Banco de Dados", 
                              "Geraldo Henrique Neto", 
                              "Quarta-Feira (7:40 - 11:10)"
                            );
                          },
                          text: "Banco de Dados",
                        ),
                        ButtonModal(
                          onPressed: () {
                            showDialogBox(
                              context,
                              "Engenharia de Software III", 
                              "Fabricio Henrique", 
                              "Sexta-Feira (7:40 - 11:10)"
                            );
                          },
                          text: "Engenharia de Software III",
                        ),
                        ButtonModal(
                          onPressed: () {

                          },
                          text: "Metodologia da Pesquisa Científica-Tecnológica",
                        ),
                        ButtonModal(
                          onPressed: () {

                          },
                          text: "Programação Orientada a Objetos",
                        ),
                        ButtonModal(
                          onPressed: () {

                          },
                          text: "Programação para Dispositivos Móveis",
                        ),
                        ButtonModal(
                          onPressed: () {

                          },
                          text: "Sistemas Operacionais II",
                        ),
                      ]
                    ),
                  ),
                )
              ],
            ),  
          ),
        ],
      ),
    );
  }
}