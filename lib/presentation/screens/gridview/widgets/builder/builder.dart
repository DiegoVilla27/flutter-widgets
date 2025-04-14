import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A stateless widget that displays a column containing a title and a grid view.
///
/// The grid view is built using a [GridView.builder] with a fixed cross axis count
/// of 4, and it displays 50 items. Each item is a container with a purple accent
/// color and a text label "GridView Item".
///
/// The column has a spacing of 10.0 between its children, and the grid view
/// has a height of 200.0. The grid items have a margin of 8.0 and spacing
/// between them is set to 2.0.
class GridViewBuilderContainer extends StatelessWidget {
  const GridViewBuilderContainer({super.key});

  @override
  Widget build(_) {
    return Column(
      spacing: 10.0,
      children: [
        const TitleContainer(text: "Builder"),
        SizedBox(
          height: 200.0,
          child: GridView.builder(
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 4,
              mainAxisSpacing: 2,
              crossAxisSpacing: 2,
            ),
            itemCount: 50,
            itemBuilder: (context, index) {
              return Container(
                margin: const EdgeInsets.all(8),
                color: Colors.deepPurpleAccent,
                child: const Text("GridView Item"),
              );
            },
          ),
        ),
      ],
    );
  }
}
