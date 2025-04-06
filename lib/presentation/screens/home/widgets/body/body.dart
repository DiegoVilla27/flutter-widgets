import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/menu/data/menu_data.dart';
import 'package:go_router/go_router.dart';

/// A stateless widget that builds a scrollable list view of menu items.
/// 
/// The `Body` widget utilizes the `menu` data to dynamically generate a list
/// of entries, each containing a title and a list of subitems. Each subitem
/// is represented by a `ListTile` with an icon, title, subtitle, and a trailing
/// arrow icon. Tapping on a subitem navigates to a specified path using
/// `context.go()`. The color scheme is derived from the current theme.
class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;

    return ListView(
      children: menu.entries.map((item) {
        return Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ListTile(title: Text(item.key)),
            ...item.value.map((subitem) {
              return ListTile(
                leading: Icon(subitem.icon, color: colors.primary),
                title: Text(subitem.title),
                subtitle: Text(subitem.subtitle),
                trailing: Icon(
                  Icons.keyboard_arrow_right,
                  color: colors.primary,
                ),
                onTap: () => context.go(subitem.path),
              );
            }),
            Divider(),
          ],
        );
      }).toList(),
    );
  }
}
