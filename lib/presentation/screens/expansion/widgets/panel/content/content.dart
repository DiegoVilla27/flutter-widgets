import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/expansion/widgets/panel/data/data.dart';

/// Builds a list of `ExpansionPanel` widgets from a collection of items.
/// 
/// Each `ExpansionPanel` is constructed with a header and a body:
/// - The header displays the item's title using a `ListTile`.
/// - The body contains the item's content wrapped in a `Padding` widget.
/// 
/// The panels are initially expanded or collapsed based on the `isExpanded`
/// property of each item. The header can be tapped to toggle the expansion
/// state, and the background color of the panels is set to transparent.
buildExpansionPanels() {
  return items.map<ExpansionPanel>((item) {
    return ExpansionPanel(
      headerBuilder: (context, isExpanded) {
        return ListTile(title: Text(item.title));
      },
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Text(item.content),
      ),
      isExpanded: item.isExpanded,
      backgroundColor: Colors.transparent,
      canTapOnHeader: true,
    );
  }).toList();
}
