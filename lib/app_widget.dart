import 'package:calculadora_imc/screens/home_page.dart';
import 'package:calculadora_imc/screens/result_page.dart';
import 'package:flutter/material.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/result': (context) => ResultPage()
      }
    );
  }
}
