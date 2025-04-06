import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/home/widgets/list_items/widgets/item/item.dart';
import 'package:flutter_widgets/core/menu/data/menu_data.dart';

class ListItems extends StatelessWidget {
  const ListItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:
          menu.entries.map((item) {
            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(title: Text(item.key)),
                ...item.value.map((subitem) => Item(subitem: subitem)),
                const Padding(
                  padding: EdgeInsets.only(top: 5),
                  child: Divider(),
                ),
              ],
            );
          }).toList(),
    );
  }
}
