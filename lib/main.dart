import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'view/screens/splash_screen.dart';
import 'view/screens/tela_anotacoes.dart';
import 'view/screens/tela_cadastro.dart';
import 'view/screens/home_bottom_navigation.dart';
import 'view/screens/tela_consultar_disciplina.dart';
import 'view/screens/tela_grade_completa.dart';
import 'view/screens/tela_inicial.dart';
import 'view/screens/tela_login.dart';
import 'view/screens/tela_menu.dart';
import 'view/screens/tela_nova_anotacao.dart';
import 'view/screens/tela_perfil.dart';
import 'view/screens/tela_recuperar_senha.dart';
import 'view/screens/tela_sobre.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Locationer',
      initialRoute: 'splash_screen',
      routes: {
        'inicial': (context) => const TelaInicial(),
        'login': (context) => const  TelaLogin(),
        'cadastro': (context) => const TelaCadastro(),
        'esqueci_senha': (context) => const TelaEsqueciSenha(),
        'principal': (context) => const TelaPrincipal(),
        'menu': (context) => const TelaMenu(),
        'perfil': (context) => const TelaPerfil(),
        'consultar_disciplina': (context) => const TelaConsultarDisciplina(),
        'grade_completa': (context) => const TelaGradeCompleta(),
        'sobre': (context) => const TelaSobre(),
        'anotacoes': (context) => const TelaAnotacoes(),
        'nova_anotacao': (context) => const TelaNovaAnotacao(),
        'splash_screen': (context) => const SplashScreen(),
      },
    ),
  );
}