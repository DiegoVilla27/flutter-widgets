import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(_) {
    return Layout(
      appBar: AppBarCustom(title: "Cards"),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Card(
            child: ListTile(
              leading: const Icon(Icons.album),
              title: const Text('Card 1'),
              subtitle: const Text('This is a card'),
            ),
          ),
          const SizedBox(height: 20),
          Card(
            child: ListTile(
              leading: const Icon(Icons.album),
              title: const Text('Card 2'),
              subtitle: const Text('This is another card'),
            ),
          ),
        ],
      ),
    );
  }
}
