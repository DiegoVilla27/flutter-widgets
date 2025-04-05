import 'package:flutter/material.dart';
import 'package:flutter_widgets/core/theme/theme.dart';
import 'package:flutter_widgets/presentation/screens/home/home_screen.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeCustom().get(),
      home: const HomeScreen(),
    );
  }
}
