import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/screens/home/widgets/list_items/list_items.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(_) {
    return const Scaffold(
      appBar: AppBarCustom(title: 'Widgets',),
      body: ListItems(),
    );
  }
}
