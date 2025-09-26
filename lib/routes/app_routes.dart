import 'package:flutter/material.dart';
import 'package:exercicio_seminarios/screens/home_screen.dart';
import 'package:exercicio_seminarios/screens/exercise_one/screen_one.dart';
import 'package:exercicio_seminarios/screens/exercise_one/screen_two.dart';
import 'package:exercicio_seminarios/screens/exercise_two/exercise_two_screen.dart';
import 'package:exercicio_seminarios/screens/exercise_three/exercise_three_screen.dart';

class AppRoutes {
  // Nomes das rotas para evitar erros de digitação
  static const String home = '/';
  static const String exerciseOne = '/exercise-one';
  static const String exerciseOneScreenTwo = '/exercise-one-screen-two';
  static const String exerciseTwo = '/exercise-two';
  static const String exerciseThree = '/exercise-three';

  // Mapa que liga os nomes das rotas aos widgets (telas)
  static Map<String, WidgetBuilder> get routes {
    return {
      home: (context) => const HomeScreen(),
      exerciseOne: (context) => const ExerciseOneScreenOne(),
      exerciseOneScreenTwo: (context) => const ExerciseOneScreenTwo(),
      exerciseTwo: (context) => const ExerciseTwoScreen(),
      exerciseThree: (context) => const ExerciseThreeScreen(),
    };
  }
}