// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/button.dart';
import '../components/inputs_textfield.dart';
import '../components/inputs_textfield_pass.dart';

class TelaCadastro extends StatefulWidget {
  const TelaCadastro({super.key});

  @override
  State<TelaCadastro> createState() => _TelaCadastroState();
}

class _TelaCadastroState extends State<TelaCadastro> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
      title: const Text(
        'Cadastro',
        style: TextStyle(
          fontSize: 36,
          color: Colors.white,
          fontWeight: FontWeight.normal
        ),
      ),
      backgroundColor: const Color.fromRGBO(51, 51, 51, 1),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 25, 15, 0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Nome",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              InputTextField(),
              SizedBox(
                height: 20,
              ),
              Text(
                "RA",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              InputTextField(),
              SizedBox(
                height: 20,
              ),
              Text(
                "Email institucional",
                style: TextStyle(fontSize: 24, color: Colors.white),
              ),
              InputTextField(),
              SizedBox(
                height: 20,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    "Confirmar",
                    style: TextStyle(
                      fontSize: 24, 
                      color: Colors.white
                    ),
                  ),
                  InputTextFieldPass(obscureTextOption: true)
                ],
              ),
              SizedBox(
                height: 48,
              ),
              Button(
                onPressed: () {
                  Navigator.pop(context);
                },
                text: Text(
                  "Confirmar",
                  style: TextStyle(fontSize: 24, color: Colors.white),
                ),
                color: const Color.fromRGBO(178, 0, 0, 1),
              ),
            ],
          )
        ),
      ),
    );
  }
}