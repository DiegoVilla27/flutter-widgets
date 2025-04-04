import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/home/widgets/app_bar/app_bar_home_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarHomeScreen(),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(child: Text('Hello World!')),
          OutlinedButton(onPressed: () => {}, child: Text('CLICK ME!')),
        ],
      ),
    );
  }
}
