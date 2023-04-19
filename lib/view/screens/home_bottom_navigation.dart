// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import '../components/square_icon.dart';
import 'tela_home.dart';
import 'tela_menu.dart';
import 'tela_perfil.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({super.key});

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {
  int _selectedIndex = 0;
  final List<Widget> _pages = [
    Home(),
    TelaMenu(),
    TelaPerfil(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(51, 51, 51, 1),
      body: Container(
        color: Color.fromRGBO(51, 51, 51, 1),
        child: SafeArea(
          child: _pages.elementAt(_selectedIndex),
        ),
      ),
      bottomNavigationBar: FractionallySizedBox(
        child: ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(20),
            topRight: Radius.circular(20),
          ),
          child: BottomNavigationBar(
            backgroundColor: Color.fromRGBO(147, 25, 20, 1),
            selectedItemColor: Colors.white,
            unselectedItemColor: Color.fromRGBO(33, 33, 33, 1),
            selectedFontSize: 18,
            unselectedFontSize: 18,
            
            items: [
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.home,
                  size: 40,
                ),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: SquareRounded(),
                label: 'Menu',
              ),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.person,
                  size: 40,
                ),
                label: 'Perfil',
              ),
            ],
            currentIndex: _selectedIndex,
            onTap: _onItemTapped,
          ),
        ),
      ),
    );
  }
}