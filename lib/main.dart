import 'package:flutter/material.dart';
import 'package:flutter_catalog/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    // int days = 30;
    // String name = "Ahsan Khan";
    // double pi = 3.14;
    // num marks = 87.5; // num can take both int and double.

    // var day = "Sunday";
    // Compiler will decide which datatype should be given to var.

    return const MaterialApp(
      home: HomePage(),
    );
  }
}
