import 'package:flutter/material.dart';
import '../components/button.dart';

class TelaInicial extends StatefulWidget {
  const TelaInicial({super.key});

  @override
  State<TelaInicial> createState() => _TelaInicialState();
}

class _TelaInicialState extends State<TelaInicial> {
  @override
   Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(
            bottom: Radius.circular(15),
          ),
        ),
        automaticallyImplyLeading: false,
        toolbarHeight: 80,
        centerTitle: true,
        title: const Text(
          'Locationer',
          style: TextStyle(
            fontSize: 34,
            fontWeight: FontWeight.normal,
            color:Color.fromRGBO(255, 255, 255, 1),
          ),
        ),
        backgroundColor: const Color.fromRGBO(147, 25, 20, 1),
      ),
      
      backgroundColor: const Color.fromRGBO(51, 51, 51, 1),
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
                const SizedBox(
                  height: 20,
                ),
                Button(
                  onPressed:  () {
                    Navigator.pushNamed(context, 'login');
                  },
                  text: const Text(
                    "Login",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  color: const Color.fromRGBO(178, 0, 0, 1),
                ),
                const SizedBox(
                  height: 20,
                ),
                Button(
                  onPressed: () {
                    Navigator.pushNamed(context, 'cadastro');
                  },
                  text: const Text(
                    "Cadastro",
                    style: TextStyle(fontSize: 24, color: Colors.white),
                  ),
                  color: const Color.fromRGBO(178, 0, 0, 1),
                ),
                const SizedBox(
                  height: 10,
                ),
                const Text(
                  "ou",
                  style: TextStyle(fontSize: 24, color: Colors.white)
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, 'login');
                  },
                  child: const Text(
                    "Entrar como visitante", 
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