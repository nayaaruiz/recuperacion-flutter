import 'package:flutter/material.dart';
import 'package:flutter_recuperacion/features/ui/home_page_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Stars Wars Holocron',
      home: HomePage(),
    );
  }
}