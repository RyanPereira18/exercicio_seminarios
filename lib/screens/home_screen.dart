import 'package:flutter/material.dart';
import 'package:exercicio_seminarios/routes/app_routes.dart';
import 'package:exercicio_seminarios/widgets/exercise_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        title: const Text('Exercícios Seminários III'),
        backgroundColor: Colors.indigo,
        foregroundColor: Colors.white,
        centerTitle: true,
        elevation: 4,
      ),
      body: ListView(
        padding: const EdgeInsets.all(16.0),
        children: const [
          ExerciseCard(
            icon: Icons.route_outlined,
            title: 'Exercício 1: Navegação',
            subtitle: 'Demonstra a navegação básica entre duas telas.',
            color: Colors.blue,
            destinationRoute: AppRoutes.exerciseOne,
          ),
          SizedBox(height: 16),
          ExerciseCard(
            icon: Icons.bottom_navigation,
            title: 'Exercício 2: Bottom Navigation',
            subtitle: 'Uso da BottomNavigationBar para alternar visualizações.',
            color: Colors.orange,
            destinationRoute: AppRoutes.exerciseTwo,
          ),
          SizedBox(height: 16),
          ExerciseCard(
            icon: Icons.font_download_outlined,
            title: 'Exercício 3: Fontes Customizadas',
            subtitle: 'Aplicação de uma fonte externa com o Google Fonts.',
            color: Colors.purple,
            destinationRoute: AppRoutes.exerciseThree,
          ),
        ],
      ),
    );
  }
}