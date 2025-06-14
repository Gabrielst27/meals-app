import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meals/data/meals_mockups.dart';
import 'package:meals/screens/categories_screen.dart';
import 'package:meals/screens/meals_screen.dart';

final theme = ThemeData(
  colorScheme: ColorScheme.fromSeed(
    brightness: Brightness.dark,
    seedColor: const Color.fromARGB(255, 131, 57, 0),
  ),
  textTheme: GoogleFonts.latoTextTheme(),
);

void main() {
  runApp(const App());
}

class App extends StatelessWidget {
  const App({super.key});

  final String currentScreen = 'categories';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: theme,
      home: currentScreen == 'categories'
          ? CategoriesScreen()
          : MealsScreen(title: 'test', meals: dummyMeals),
    );
  }
}
