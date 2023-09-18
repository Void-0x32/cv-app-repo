import 'package:flutter/material.dart';
import 'screens/main_screen.dart';

void main() {
  runApp(const CVApp());
}

class CVApp extends StatelessWidget {
  const CVApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'CV App',
      home: MainScreen(),
    );
  }
}
