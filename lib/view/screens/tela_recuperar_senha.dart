import 'package:flutter/material.dart';
import '../components/app_bar.dart';
import '../components/button.dart';
import '../components/inputs_textfield.dart';

class TelaEsqueciSenha extends StatefulWidget {
  const TelaEsqueciSenha({super.key});

  @override
  State<TelaEsqueciSenha> createState() => _TelaEsqueciSenhaState();
}

class _TelaEsqueciSenhaState extends State<TelaEsqueciSenha> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
      backgroundColor: const Color.fromRGBO(51, 51, 51, 1),
      title: const Text(
        'Recuperar\nSenha',
        style: TextStyle(
          fontSize: 30,
          color: Colors.white,
          fontWeight: FontWeight.normal
        ),
        textAlign: TextAlign.center,
      ),
      body: SizedBox(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 300,
                  width: 300,
                  child:
                    Image.asset('lib/images/logo-locationer 2.png', scale: 1),
                ),
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  'Informe seu Email de acesso para recuperar sua senha.',
                  style: TextStyle(
                    fontSize: 24,
                    color: Colors.white,
                    fontWeight: FontWeight.normal
                  ),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const [
                    Text(
                      "Email institucional",
                      style: TextStyle(fontSize: 24, color: Colors.white),
                    ),
                    InputTextField(),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                Button(
                onPressed: () {
                  Navigator.pop(context);
                },
                text: const Text(
                  "Enviar",
                  style: TextStyle(
                    fontSize: 24, 
                    color: Colors.white
                  ),
                ),
                color: const Color.fromRGBO(178, 0, 0, 1),
              ),
              ],
            )
          )
        ),
      ),
    );
  }
}