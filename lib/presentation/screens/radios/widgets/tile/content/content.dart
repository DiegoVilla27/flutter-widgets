import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/radios/widgets/tile/data/data.dart';

/// Builds a list of RadioListTile widgets from a collection of items.
/// 
/// Each RadioListTile is configured with a title, value, and group value,
/// and is toggleable. The `selected` parameter determines the currently
/// selected radio button, while the `change` function is called when the
/// selection changes.
/// 
/// - Parameters:
///   - selected: The value of the currently selected radio button.
///   - change: A callback function that is invoked when the radio button
///     selection changes.
buildItems({required int selected, required Function change}) {
  return items.map((item) {
    return RadioListTile(
      title: Text(item.label),
      value: item.value,
      groupValue: selected,
      toggleable: true,
      onChanged: (value) => change(value),
    );
  });
}
