import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/cards/widgets/widgets.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that represents the Cards screen in the application.
///
/// This screen includes a custom app bar with the title "Cards" and displays
/// a scrollable column containing three types of card widgets: `CardBasic`,
/// `CardBorder`, and `CardImage`. The layout is managed using a custom `Layout`
/// widget, and the app bar is implemented with `AppBarCustom`.
class CardsScreen extends StatelessWidget {
  const CardsScreen({super.key});

  @override
  Widget build(_) {
    return const Layout(
      appBar: AppBarCustom(title: "Cards"),
      child: SingleChildScrollView(
        child: Column(
          spacing: 10,
          children: [CardBasic(), CardBorder(), CardImage()],
        ),
      ),
    );
  }
}
