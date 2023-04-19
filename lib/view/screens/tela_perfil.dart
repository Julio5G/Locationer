import 'package:flutter/material.dart';
import '../components/button.dart';
import '../components/text_option_perfil.dart';
import '../components/informacoes_perfil.dart';

class TelaPerfil extends StatefulWidget {
  const TelaPerfil({super.key});

  @override
  State<TelaPerfil> createState() => _TelaPerfilState();
}

class _TelaPerfilState extends State<TelaPerfil> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(15, 20, 15, 20),
      child: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.white,
            width: 3,
          ),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const InformacoesPerfil(),
              SizedBox(
                height: MediaQuery.of(context).size.height * 0.55,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Button(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      text: const OptionText(
                        stringText: 'Meu cadastro',
                      ),
                      color: Colors.white,
                    ),
                    Button(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      text: const OptionText(
                        stringText: 'Alterar Grade',
                      ),
                      color: Colors.white,
                    ),
                    Button(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      text: const OptionText(
                        stringText: 'Mais Notificações',
                      ),
                      color: Colors.white,
                    ),
                    Button(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      text: const OptionText(
                        stringText: 'Integrações',
                      ),
                      color: Colors.white,
                    ),
                    Button(
                      onPressed: () {
                        Navigator.pushNamed(context, 'sobre');
                      },
                      text: const OptionText(
                        stringText: 'Sobre',
                      ),
                      color: Colors.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}