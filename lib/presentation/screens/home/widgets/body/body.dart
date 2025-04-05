import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/menu/data/menu_data.dart';

class BodyHomeScreen extends StatelessWidget {
  const BodyHomeScreen({super.key});

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
                onTap: () {},
              );
            }),
            Divider(),
          ],
        );
      }).toList(),
    );
  }
}
