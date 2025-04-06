import 'package:flutter/material.dart';

class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cards'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Center(
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
        ),
      ),
    );
  }
}