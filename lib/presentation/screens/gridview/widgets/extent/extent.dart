import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A stateless widget that displays a column containing a title and a
/// GridView with a fixed extent for each item.
///
/// The GridViewExtentContainer widget includes a title at the top and
/// a GridView below it, where each grid item has a maximum cross-axis
/// extent of 150 pixels. The GridView displays six items, each styled
/// with a deep purple accent color and a margin of 8 pixels.
class GridViewExtentContainer extends StatelessWidget {
  const GridViewExtentContainer({super.key});

  @override
  Widget build(_) {
    return Column(
      spacing: 10.0,
      children: [
        const TitleContainer(text: "Extent"),
        SizedBox(
          height: 200,
          child: GridView.extent(
            maxCrossAxisExtent: 150,
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
