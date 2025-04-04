import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/menu/models/menu_item.dart';

/// A constant list of `MenuItem` objects representing different menu options.
/// 
/// Each `MenuItem` includes a title, subtitle, navigation path, and an icon.
const List<MenuItem> menu = [
  MenuItem(
    title: "Botones", 
    subtitle: "Varios botones", 
    path: "/buttons", 
    icon: Icons.smart_button_outlined
  ),
  MenuItem(
    title: "Tarjetas", 
    subtitle: "Contenedor estilizado", 
    path: "/cards", 
    icon: Icons.credit_card
  )
];