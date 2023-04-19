import 'package:flutter/material.dart';
import '../components/app_bar.dart';

class TelaSobre extends StatefulWidget {
  const TelaSobre({
    super.key
  });

  @override
  State<TelaSobre> createState() => _TelaSobreState();
}

class _TelaSobreState extends State<TelaSobre> {
  @override
  Widget build(BuildContext context) {
    return ScaffoldComponent(
      backgroundColor: const Color.fromRGBO(51, 51, 51, 1),
      title: const Text(
        'Sobre',
        style: TextStyle(
          fontSize: 36,
          color: Colors.white,
          fontWeight: FontWeight.normal
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: SizedBox(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: 280,
                width: 280,
                child:
                  Image.asset(
                    'lib/images/logo-locationer 2.png', 
                    scale: 1
                  ),
              ),
              const Text(
                'Locationer',
                style: TextStyle(
                  fontSize: 30, 
                  color: Colors.white
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Tema:',
                    style: TextStyle(
                      fontSize: 24, 
                      color: Colors.white
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Center(
                      child: Padding(
                        padding: EdgeInsets.all(5),
                        child: Text(
                          'Localização Indoor',
                          style: TextStyle(
                            fontSize: 22, 
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Objetivo:',
                    style: TextStyle(
                      fontSize: 24, 
                      color: Colors.white
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.all(5),
                      child: Center(
                        child: Text(
                          'Com o intuito de se localizar seguindo um mapa interativo, o app Locationer mostra o caminho até sua sala de aula, ou outro lugar dentro da faculdade (Fatec).',
                          style: TextStyle(
                            fontSize: 22, 
                            color: Colors.white
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Desenvolvido por:',
                    style: TextStyle(
                      fontSize: 24, 
                      color: Colors.white
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(
                      border: Border.all(
                        color: Colors.white,
                        width: 3,
                      ),
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.all(5),
                        child: Column(
                          children: const [
                            Text(
                              'Julio Cesar de Jesus dos Santos',
                              style: TextStyle(
                                fontSize: 22, 
                                color: Colors.white
                              ),
                            ),
                            Text(
                              'Vitor Hayaxibara Sampaio',
                              style: TextStyle(
                                fontSize: 22, 
                                color: Colors.white
                              ),
                            ),
                          ]
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}