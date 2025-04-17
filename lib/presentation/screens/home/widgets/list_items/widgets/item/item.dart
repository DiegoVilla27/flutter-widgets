import 'package:flutter/material.dart';
import 'package:flutter_widgets/core/menu/models/menu_item.dart';
import 'package:go_router/go_router.dart';

/// A stateless widget that represents an item in a list, displaying an icon,
/// title, subtitle, and a trailing arrow icon. Tapping the item navigates to
/// the path specified in the `subitem`.
///
/// The `Item` widget requires a `MenuItem` object, which provides the icon,
/// title, subtitle, and navigation path for the list item.
///
/// Uses the current theme's color scheme for styling the icons.
class Item extends StatelessWidget {
  final MenuItem subitem;

  const Item({super.key, required this.subitem});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListTile(
      leading: Icon(subitem.icon, color: colors.primary),
      title: Text(subitem.title),
      subtitle: Text(subitem.subtitle),
      trailing: Icon(Icons.keyboard_arrow_right, color: colors.primary),
      onTap: () => context.push(subitem.path),
    );
  }
}
