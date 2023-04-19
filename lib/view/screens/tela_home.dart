// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../components/container.dart';
import '../components/favorites.dart';
import '../components/neste_momento.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Favoritos(
                widgetsInContainer: Row(
                  children: [
                    ContainerComponent(
                        widgetInContainer: Text(
                          'Grade\nCompleta',
                          style: TextStyle(
                            fontSize: 20, 
                            color: Colors.white
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onTapfunction: () {
                          Navigator.pushNamed(context, 'grade_completa');
                        },
                      ),
                      ContainerComponent(
                        widgetInContainer: Text(
                          'Consultar\nDisciplina',
                          style: TextStyle(
                            fontSize: 20, 
                            color: Colors.white
                          ),
                          textAlign: TextAlign.center,
                        ),
                        onTapfunction: () {
                          Navigator.pushNamed(context, 'consultar_disciplina');
                        },
                      ),
                      ContainerComponent(
                        widgetInContainer: Text(
                          'Anotações',
                          style: TextStyle(
                            fontSize: 20, 
                            color: Colors.white
                          ),
                        ),
                        onTapfunction: () {
                          Navigator.pushNamed(context, 'anotacoes');
                        },
                      ),
                  ],
                )
              ),
              SizedBox(
                height: 20
              ),
              NesteMomento(
                widgetsInContainer: 
                Column(
                  children: [
                    Text(
                      'Sistemas Operacionais I',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Text(
                      'Marco Antonio Andar 1 - Sala 5',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24,
                        fontWeight: FontWeight.normal,
                      ),
                    ),
                    Container(
                      width: double.infinity,
                      height: 240,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Stack(
                      children: [
                        Container(
                          width: double.infinity,
                          height: 15,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                          ),
                        ),
                        Positioned(
                          child: Container(
                            width: (MediaQuery.of(context).size.width / 2.5),
                            height: 15,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                        Positioned(
                          top: -3,
                          left: (MediaQuery.of(context).size.width / 2.5),
                          child: Text(
                            '10:00',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontWeight: FontWeight.normal,
                            ),
                          )
                        ),
                      ]
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          '9:30',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24,
                              fontWeight: FontWeight.normal,
                            ),
                        ),
                        Text(
                          '13:00',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.normal,
                          ),
                        )
                      ],
                    )
                  ],
                )
              )
            ],
          ),
        ],
      ),
    );
  }
}