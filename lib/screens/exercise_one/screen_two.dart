import 'package:flutter/material.dart';

class ExerciseOneScreenTwo extends StatelessWidget {
  const ExerciseOneScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Segunda Tela'),
        backgroundColor: Colors.red,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Voltar para a primeira tela'),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
    );
  }
}