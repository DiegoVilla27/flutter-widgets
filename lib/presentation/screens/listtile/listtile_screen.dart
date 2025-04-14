import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/appbar/appbar.dart';
import 'package:flutter_widgets/presentation/shared/widgets/layout/layout.dart';

/// A stateless widget that displays a screen with a custom app bar and a
/// ListTile widget.
///
/// The ListTileScreen widget uses a Layout widget to structure its content,
/// featuring a custom AppBarCustom with the title "List Tile". The main content
/// is a ListTile with an icon, title, subtitle, and a trailing icon button.
/// The ListTile has a black38 background color and specific content padding.
class ListTileScreen extends StatelessWidget {
  const ListTileScreen({super.key});

  @override
  Widget build(_) {
    return Layout(
      appBar: const AppBarCustom(title: "List Tile"),
      child: Container(
        color: Colors.black38,
        child: ListTile(
          leading: const Icon(Icons.supervised_user_circle),
          title: const Text("Title"),
          subtitle: const Text("Description"),
          trailing: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.more_vert),
          ),
          contentPadding: const EdgeInsets.only(left: 15.0),
        ),
      ),
    );
  }
}
