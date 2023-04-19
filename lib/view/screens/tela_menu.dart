// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:locationer/view/components/item_menu.dart';

class TelaMenu extends StatefulWidget {
  const TelaMenu({super.key});

  @override
  State<TelaMenu> createState() => _TelaMenuState();
}

class _TelaMenuState extends State<TelaMenu> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Container(
        padding: const EdgeInsets.fromLTRB(10, 10, 10, 10),
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: GridView.count(
          padding: const EdgeInsets.fromLTRB(15, 5, 15, 5),
          crossAxisSpacing: 15,
          mainAxisSpacing: 10,
          crossAxisCount: 2,
          children: [
            ItemMenu(
              sizeOfBox: 25,
              onPressed: () {
                Navigator.pushNamed(context, 'grade_completa');
              },
              child: Text(
                'Grade\nCompleta',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              )
            ),
            ItemMenu(
              sizeOfBox: 25,
              onPressed: () {
                
              },
              child: Text(
                'Grade\nDiaria',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              )
            ),
            ItemMenu(
              sizeOfBox: 25,
              onPressed: () {
                
              },
              child: Text(
                'Agenda',
                style: TextStyle(fontSize: 18)
              )
            ),
            ItemMenu(
              sizeOfBox: 25,
              onPressed: () {
                Navigator.pushNamed(context, 'anotacoes');
              },
              child: Text(
                'Anotações',
                style: TextStyle(fontSize: 18)
              )
            ),
            ItemMenu(
              sizeOfBox: 25,
              onPressed: () {
                
              },
              child: Text(
                'Notificações',
                style: TextStyle(fontSize: 18)
              )
            ),
            ItemMenu(
              sizeOfBox: 25,
              onPressed: () {
                Navigator.pushNamed(context, 'consultar_disciplina');
              },
              child: Text(
                'Consultar\nDisciplina',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              )
            ),
            ItemMenu(
              sizeOfBox: 25,
              onPressed: () {
                
              },
              child: Text(
                'Navegação\nAberta',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              )
            ),
            ItemMenu(
              sizeOfBox: 25,
              onPressed: () {
                
              },
              child: Text(
                'Onde\nEstou?',
                style: TextStyle(fontSize: 18),
                textAlign: TextAlign.center,
              )
            ),
          ],
        ),
      ),
    );
  }
}