import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that represents a screen with a row layout.
/// 
/// The `RowScreen` widget uses a custom `Layout` widget to structure
/// its content, which includes a custom `AppBarCustom` with the title
/// "Column". The main content is a `Row` widget with three text items,
/// centered and spaced evenly. The background color of the row is set
/// to a light transparent white.
class RowScreen extends StatelessWidget {
  const RowScreen({super.key});

  @override
  Widget build(_) {
    return Layout(
      appBar: const AppBarCustom(title: "Row"),
      child: SizedBox(
        width: double.infinity,
        child: Container(
          color: Colors.white10,
          child: const Row(
            spacing: 10.0,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Row Item 1"),
              Text("Row Item 2"),
              Text("Row Item 3"),
            ],
          ),
        ),
      ),
    );
  }
}
