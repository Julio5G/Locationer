// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:locationer/view/components/app_bar.dart';
import 'package:locationer/view/components/button.dart';
import '../components/inputs_textfield_pass.dart';
import '../components/inputs_textfield.dart';

class TelaLogin extends StatefulWidget {
  const TelaLogin({super.key});

  @override
  State<TelaLogin> createState() => _TelaLoginState();
}

class _TelaLoginState extends State<TelaLogin> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
      backgroundColor: Color.fromRGBO(51, 51, 51, 1),
      title: const Text(
        'Login',
        style: TextStyle(
          fontSize: 36,
          color: Colors.white,
          fontWeight: FontWeight.normal
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(15, 0, 15, 0),
        child: SizedBox(
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: 300,
                  width: 300,
                  child:
                    Image.asset('lib/images/logo-locationer 2.png', scale: 1),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Email",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    InputTextField(),
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Senha",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    InputTextFieldPass(obscureTextOption: true)
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
                Button(
                  onPressed:  () {
                    Navigator.pushNamed(context, 'principal');
                  },
                  text: Text(
                    "Entrar",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  color: const Color.fromRGBO(178, 0, 0, 1),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'esqueci_senha');
                  },
                  child: const Text(
                    "Esqueceu sua senha?",
                    style: TextStyle(
                      fontSize: 24, color: Colors.white,
                      fontWeight: FontWeight.w500,
                    )
                  )
                ),
              ]
            ),
          ),
        )
      ), 
    );
  }
}