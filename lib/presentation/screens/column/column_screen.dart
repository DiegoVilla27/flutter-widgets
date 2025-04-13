import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that represents a screen with a column layout.
/// 
/// The `ColumnScreen` widget uses a custom `AppBarCustom` and a `Layout`
/// widget to structure its content. It displays a column with three text
/// items centered vertically within a container that spans the full width
/// of the screen and has a light background color.
class ColumnScreen extends StatelessWidget {
  const ColumnScreen({super.key});

  @override
  Widget build(_) {
    return Layout(
      appBar: const AppBarCustom(title: "Column"),
      child: SizedBox(
        width: double.infinity,
        child: Container(
          color: Colors.white10,
          child: const Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Column Item 1"),
              Text("Column Item 2"),
              Text("Column Item 3"),
            ],
          ),
        ),
      ),
    );
  }
}
