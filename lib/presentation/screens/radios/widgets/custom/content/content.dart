import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/radios/widgets/tile/data/data.dart';

/// Builds a list of interactive items, each represented by a row containing
/// a circular icon and a label. The icon changes based on the selected item.
/// 
/// The function takes a required `selected` parameter to determine which item
/// is currently selected, a `colors` parameter for theming, and a `change`
/// callback function that is triggered when an item is tapped.
/// 
/// Each item is wrapped in a `GestureDetector` to handle tap events, and the
/// icon's appearance is animated with a smooth transition.
buildItems({
  required int selected,
  required ColorScheme colors,
  required Function(Item) change,
}) {
  return items.map((item) {
    return GestureDetector(
      onTap: () => change(item),

      child: Row(
        spacing: 10.0,
        mainAxisSize: MainAxisSize.min,
        children: [
          AnimatedContainer(
            duration: const Duration(milliseconds: 400),
            curve: Curves.fastOutSlowIn,
            width: 30.0,
            height: 30.0,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color:
                    (selected == item.value) ? Colors.white : colors.onPrimary,
                width: 2.0,
              ),
              color: Colors.transparent,
            ),
            child: Icon(
              (selected == item.value) ? Icons.check : null,
              size: 18.0,
            ),
          ),
          Text(item.label),
        ],
      ),
    );
  });
}
