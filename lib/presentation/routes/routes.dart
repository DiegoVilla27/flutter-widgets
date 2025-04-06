import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/buttons/buttons_screen.dart';
import 'package:flutter_widgets/presentation/screens/cards/cards_screen.dart';
import 'package:flutter_widgets/presentation/screens/home/home_screen.dart';

class AppRoutes {
  static const String home = '/';
  static const String buttons = '/buttons';
  static const String cards = '/cards';

  static Map<String, WidgetBuilder> routes = {
    home: (context) => const HomeScreen(),
    buttons: (context) => const ButtonsScreen(),
    cards: (context) => const CardsScreen(),
  };
}
