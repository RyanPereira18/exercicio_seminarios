import 'package:flutter/material.dart';
import 'package:exercicio_seminarios/routes/app_routes.dart';
import 'package:exercicio_seminarios/screens/home_screen.dart';

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
      initialRoute: AppRoutes.home,
      routes: AppRoutes.routes,
      debugShowCheckedModeBanner: false,
    );
  }
}