import 'package:flutter/material.dart';
import 'package:multiplas/screens/categories_meals_screen.dart';
import 'package:multiplas/screens/categories_screens.dart';
import 'package:multiplas/utils/app_routes.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);
  final ThemeData tema = ThemeData();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'DeliMeals',
      theme: tema.copyWith(
        colorScheme: tema.colorScheme.copyWith(
          primary: Colors.pink,
          secondary: Colors.amber,
        ),
        textTheme: tema.textTheme.copyWith(
          headline6: const TextStyle(
            fontFamily: 'RobotoCondensed',
            fontSize: 16,
          ),
        ),
      ),
      routes: {
        AppRoutes.home: (ctx) => const CategoriesScreen(),
        AppRoutes.categoriesMeals: (ctx) => const CategoriesMealsScreen(),
      },
    );
  }
}
