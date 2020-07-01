import 'package:flutter/material.dart';
import './screens/home_page.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Udemy Test App",
      theme: ThemeData(),
      home: HomePage(),
    );
  }
}
