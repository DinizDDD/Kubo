import 'package:flutter/material.dart';
import 'package:kubo/components/AppNavbar.dart';
import 'package:kubo/components/BottomNavbar.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppNavbar(),
        bottomNavigationBar: BottomNavbar(),
        body: Center(child: Text('Hello World!')),
      ),
    );
  }
}
