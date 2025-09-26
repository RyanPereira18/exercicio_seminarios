import 'package:flutter/material.dart';
import 'package:exercicio_seminarios/routes/app_routes.dart';

class ExerciseOneScreenOne extends StatelessWidget {
  const ExerciseOneScreenOne({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Primeira Tela'),
        backgroundColor: Colors.blue,
        foregroundColor: Colors.white,
      ),
      body: Center(
        child: ElevatedButton(
          child: const Text('Ir para a segunda tela'),
          onPressed: () {
            Navigator.pushNamed(context, AppRoutes.exerciseOneScreenTwo);
          },
        ),
      ),
    );
  }
}