import 'package:flutter/material.dart';

/// Represents a menu item with a title, subtitle, navigation path, and icon.
///
/// This class is used to define the properties of a menu item that can be
/// displayed in a user interface. Each menu item has a title and subtitle
/// for display purposes, a path for navigation, and an icon to visually
/// represent the item.
///
/// The [title] is the main text displayed for the menu item.
/// The [subtitle] provides additional context or description.
/// The [path] is a string that typically represents a route or URL for navigation.
/// The [icon] is an [IconData] object that specifies the icon to display.
class MenuItem {
  final String title;
  final String subtitle;
  final String path;
  final IconData icon;

  const MenuItem({
    required this.title,
    required this.subtitle,
    required this.path,
    required this.icon,
  });
}