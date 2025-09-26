import 'package:flutter/material.dart';

class ExerciseTwoScreen extends StatefulWidget {
  const ExerciseTwoScreen({super.key});

  @override
  State<ExerciseTwoScreen> createState() => _ExerciseTwoScreenState();
}

class _ExerciseTwoScreenState extends State<ExerciseTwoScreen> {
  int _selectedIndex = 0;

  static const List<Widget> _telas = <Widget>[
    Center(child: Text('Início', style: TextStyle(fontSize: 24))),
    Center(child: Text('Configurações', style: TextStyle(fontSize: 24))),
    Center(child: Text('Perfil', style: TextStyle(fontSize: 24))),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App com BottomNavigationBar'),
      ),
      body: _telas.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Início'),
          BottomNavigationBarItem(icon: Icon(Icons.settings), label: 'Configurações'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
      ),
    );
  }
}