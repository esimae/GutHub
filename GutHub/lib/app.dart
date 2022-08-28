
import 'package:flutter/material.dart';

import 'package:cookbook/ui/screens/login.dart';
import 'package:cookbook/ui/screens/home.dart';
import 'package:cookbook/ui/theme.dart';

class RecipesApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'GutHub',
      theme: buildTheme(),
      routes: {
        // If you're using navigation routes, Flutter needs a base route.
        // We're going to change this route once we're ready with 
        // implementation of HomeScreen.
        '/': (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
      },
    );
  }
}