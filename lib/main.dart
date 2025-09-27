import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Exercícios Flutter',
      theme: ThemeData(
        primarySwatch: Colors.indigo,
        useMaterial3: true,
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
      ),
      home: const TelaPrincipal(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class TelaPrincipal extends StatelessWidget {
  const TelaPrincipal({super.key});

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
        children: [
          _buildExerciseCard(
            context: context,
            icon: Icons.route_outlined,
            title: 'Exercício 1: Navegação',
            subtitle: 'Demonstra a navegação básica entre duas telas.',
            color: Colors.blue,
            destination: const Exercicio1Tela1(),
          ),
          const SizedBox(height: 16),
          _buildExerciseCard(
            context: context,
            icon: Icons.apps,
            title: 'Exercício 2: Bottom Navigation',
            subtitle: 'Uso da BottomNavigationBar para alternar visualizações.',
            color: Colors.orange,
            destination: const Exercicio2Screen(),
          ),
          const SizedBox(height: 16),
          _buildExerciseCard(
            context: context,
            icon: Icons.font_download_outlined,
            title: 'Exercício 3: Fontes Customizadas',
            subtitle: 'Aplicação de uma fonte externa com o Google Fonts.',
            color: Colors.purple,
            destination: const Exercicio3Screen(),
          ),
        ],
      ),
    );
  }

  Widget _buildExerciseCard({
    required BuildContext context,
    required IconData icon,
    required String title,
    required String subtitle,
    required Color color,
    required Widget destination,
  }) {
    return Card(
      elevation: 2.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.0),
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            children: [
              Icon(icon, size: 40, color: color),
              const SizedBox(width: 16),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title, style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 4),
                    Text(subtitle, style: TextStyle(fontSize: 14, color: Colors.grey[600])),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.grey),
            ],
          ),
        ),
      ),
    );
  }
}

class Exercicio1Tela1 extends StatelessWidget {
  const Exercicio1Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Primeira Tela'), backgroundColor: Colors.blue, foregroundColor: Colors.white),
      body: Center(
        child: ElevatedButton(
          child: const Text('Ir para a segunda tela'),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => const Exercicio1Tela2()));
          },
        ),
      ),
    );
  }
}

class Exercicio1Tela2 extends StatelessWidget {
  const Exercicio1Tela2({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Segunda Tela'), backgroundColor: Colors.red, foregroundColor: Colors.white),
      body: Center(
        child: ElevatedButton(
          child: const Text('Voltar para a primeira tela'),
          onPressed: () => Navigator.pop(context),
        ),
      ),
    );
  }
}

class Exercicio2Screen extends StatefulWidget {
  const Exercicio2Screen({super.key});
  @override
  _Exercicio2ScreenState createState() => _Exercicio2ScreenState();
}

class _Exercicio2ScreenState extends State<Exercicio2Screen> {
  int _selectedIndex = 0;
  static const List<Widget> _telas = [
    Center(child: Text('Início', style: TextStyle(fontSize: 24))),
    Center(child: Text('Configurações', style: TextStyle(fontSize: 24))),
    Center(child: Text('Perfil', style: TextStyle(fontSize: 24))),
  ];
  void _onItemTapped(int index) => setState(() => _selectedIndex = index);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('App com BottomNavigationBar')),
      body: _telas.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
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

class Exercicio3Screen extends StatelessWidget {
  const Exercicio3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Texto com Fonte Customizada')),
      body: Center(
        child: Text(
          'Texto com Fonte Lobster',
          style: GoogleFonts.lobster(fontSize: 36, color: Colors.purple),
        ),
      ),
    );
  }
}