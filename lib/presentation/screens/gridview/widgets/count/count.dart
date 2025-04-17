import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A stateless widget that displays a column containing a title and a grid view.
/// 
/// The `GridViewCountContainer` widget consists of a title and a grid view with
/// a fixed number of items. The grid view is configured with two columns and
/// displays six items, each styled with a margin and a deep purple accent color.
class GridViewCountContainer extends StatelessWidget {
  const GridViewCountContainer({super.key});

  @override
  Widget build(_) {
    return Column(
      spacing: 10.0,
      children: [
        const TitleContainer(text: "Count"),
        SizedBox(
          height: 200.0,
          child: GridView.count(
            crossAxisCount: 2,
            children: List.generate(6, (index) {
              return Container(
                margin: const EdgeInsets.all(8),
                color: Colors.deepPurpleAccent,
                child: const Text("GridView Item"),
              );
            }),
          ),
        ),
      ],
    );
  }
}
