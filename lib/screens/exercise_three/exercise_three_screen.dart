import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ExerciseThreeScreen extends StatelessWidget {
  const ExerciseThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Texto com Fonte Customizada'),
      ),
      body: Center(
        child: Text(
          'Texto com Fonte Lobster',
          style: GoogleFonts.lobster(
            fontSize: 36,
            color: Colors.purple,
          ),
        ),
      ),
    );
  }
}