import 'package:flutter/material.dart';
import 'package:portifolio/app/screens/home/home_screen.dart';
import 'package:portifolio/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Portifolio',
      theme: theme(context),
      home: HomeScreen(),
    );
  }
}
