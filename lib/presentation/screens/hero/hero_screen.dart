import 'package:flutter/material.dart';
import 'package:flutter_widgets/core/routes/routes_names.dart';
import 'package:flutter_widgets/presentation/screens/hero/data/data.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';
import 'package:go_router/go_router.dart';

/// A stateless widget that displays a grid of hero images.
/// 
/// Each hero image is wrapped in a `GestureDetector` to handle tap events,
/// which navigate to the hero details screen using the hero's name as a parameter.
/// The layout includes a custom app bar and centers the hero images with
/// specified spacing between them.
class HeroScreen extends StatelessWidget {
  const HeroScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Layout(
      appBar: const AppBarCustom(title: "Hero"),
      child: Center(
        child: Wrap(
          alignment: WrapAlignment.center,
          spacing: 10.0,
          runSpacing: 15.0,
          children:
              List.generate(heroes.length, (index) {
                String heroSelected = heroes[index];
                return GestureDetector(
                  onTap: () {
                    context.pushNamed(
                      AppRoutesNamed.heroDetails,
                      pathParameters: {'name': heroSelected},
                    );
                  },
                  child: Hero(
                    tag: heroes[index],
                    child: Image.asset(
                      "assets/images/heroes/${heroes[index]}.png",
                      height: 100,
                    ),
                  ),
                );
              }).toList(),
        ),
      ),
    );
  }
}
