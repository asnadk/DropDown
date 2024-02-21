import 'package:drop_and_down/homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return   MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 9, 115, 131)
      ),
      debugShowCheckedModeBanner: false,
      home: const Dropdown()
    );
  }
}
