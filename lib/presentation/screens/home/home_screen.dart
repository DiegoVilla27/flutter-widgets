import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/home/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/screens/home/widgets/body/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: AppBarHomeScreen(),
      body: BodyHomeScreen(),
    );
  }
}
