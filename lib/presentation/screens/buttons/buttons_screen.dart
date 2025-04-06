import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/buttons/widgets/buttons.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';

/// A stateless widget that represents a screen displaying various button styles.
/// 
/// The `ButtonsScreen` widget includes a custom app bar and a scrollable body
/// containing different types of button containers, each separated by a divider.
/// It also includes a floating action button located at the end of the screen.
/// 
/// The screen is designed to showcase different button styles such as elevated,
/// outlined, text, icon, filled, and custom buttons, each encapsulated in their
/// respective container widgets.
class ButtonsScreen extends StatelessWidget {
  const ButtonsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(title: 'Buttons'),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 10,
            children: [
              ElevatedBtnContainer(),
              Divider(),
              OutlinedBtnContainer(),
              Divider(),
              TextBtnContainer(),
              Divider(),
              IconBtnContainer(),
              Divider(),
              FilledBtnContainer(),
              Divider(),
              CustomBtnContainer(),
            ],
          ),
        ),
      ),
      floatingActionButton: FABBtnContainer(),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
    );
  }
}
