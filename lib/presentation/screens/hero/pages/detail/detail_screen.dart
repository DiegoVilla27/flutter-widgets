import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';
import 'package:go_router/go_router.dart';

/// A stateless widget that displays the details of a hero character.
/// 
/// The [HeroDetailScreen] takes a [name] parameter, which is used to
/// load the corresponding hero image from the assets and set the hero
/// animation tag. The screen includes a floating action button that
/// navigates back to the previous screen when pressed.
class HeroDetailScreen extends StatelessWidget {
  final String name;

  const HeroDetailScreen({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return Layout(
      floatingActionButton: FloatingActionButton(
        onPressed: () => context.pop(),
        child: const Icon(Icons.arrow_back_ios_new),
      ),
      child: Hero(
        tag: name,
        child: Center(
          child: Image.asset(
            "assets/images/heroes/$name.png",
            width: double.infinity,
          ),
        ),
      ),
    );
  }
}
