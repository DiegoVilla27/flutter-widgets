import 'package:flutter/material.dart';

/// A stateless widget that displays a basic card with a title, description,
/// and an icon button. The card has a slight elevation and padding around
/// its content. The title is styled with a larger font size and bold weight.
class CardBasic extends StatelessWidget {
  const CardBasic({super.key});

  @override
  Widget build(_) {
    return Card(
      elevation: 2,
      child: Padding(
        padding: const EdgeInsets.fromLTRB(15, 15, 5, 15),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Card Basic",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  Text("Description Card Basic"),
                ],
              ),
            ),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert)),
          ],
        ),
      ),
    );
  }
}
