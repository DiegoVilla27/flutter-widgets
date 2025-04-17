import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/screens/home/widgets/list_items/list_items.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that represents the home screen of the application.
/// 
/// This widget uses a custom layout with an app bar and a list of items.
/// The app bar displays the title 'Widgets', and the main content is
/// provided by the `ListItems` widget.
class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(_) {
    return const Layout(
      appBar: AppBarCustom(title: 'Widgets',),
      child: ListItems(),
    );
  }
}
