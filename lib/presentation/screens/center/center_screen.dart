import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that represents the Center screen of the application.
/// 
/// This widget uses the organization's custom `Layout` and `AppBarCustom`
/// widgets to structure the screen. It displays a centered text with a bold
/// font style and a font size of 20.0.
class CenterScreen extends StatelessWidget {
  const CenterScreen({super.key});

  @override
  Widget build(_) {
    return const Layout(
      appBar: AppBarCustom(title: "Center"),
      child: Center(
        child: Text(
          "Center Item",
          style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
