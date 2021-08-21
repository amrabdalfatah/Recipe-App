import 'package:flutter/material.dart';

import 'modules/home.dart';

void main() {
  runApp(RecipeApp());
}

class RecipeApp extends StatelessWidget {
  const RecipeApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Recipe App',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.black,
      ),
      home: HomePage(),
    );
  }
}
