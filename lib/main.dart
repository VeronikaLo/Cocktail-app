import 'package:flutter/material.dart';
import '../pages/cover_screen_page.dart';
import '../pages/choose_coctails.dart';
import '../pages/recipe.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const CoverScreenPage(),
        '/recipe': (context) => const RecipePage(),
        '/choosecoctail': (context) => const Coctail(),
      },
      theme: ThemeData(
          primarySwatch: Colors.blue,
          textTheme: const TextTheme(
            bodyText1: TextStyle(fontFamily: 'Pacifico'),
            // bodyText2: TextStyle(fontFamily: 'Exo2'))
          )),
      // home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}
