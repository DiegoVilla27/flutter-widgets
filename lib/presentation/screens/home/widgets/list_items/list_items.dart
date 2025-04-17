import 'package:flutter/material.dart';
import 'package:flutter_widgets/core/menu/data/menu_data.dart';
import 'package:flutter_widgets/presentation/screens/home/widgets/list_items/widgets/item/item.dart';

/// A stateless widget that builds a list of items using a ListView.
///
/// The widget iterates over menu entries, creating a column for each entry.
/// Each column contains a ListTile for the entry key, a list of Item widgets
/// for each subitem, and a Divider for separation.
class ListItems extends StatelessWidget {
  const ListItems({super.key});

  @override
  Widget build(_) {
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
