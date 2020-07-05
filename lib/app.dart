import 'package:flutter/material.dart';
import 'screens/home_screen.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Udemy Test App",
      theme: ThemeData(),
      home: HomeScreen(),
    );
  }
}

ThemeData _themeData() {
  return ThemeData();
}
