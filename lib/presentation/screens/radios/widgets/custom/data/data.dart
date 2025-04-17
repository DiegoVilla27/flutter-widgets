/// A class representing an item with a value and a label.
/// 
/// The [Item] class contains two properties:
/// - [value]: An integer representing the item's value.
/// - [label]: A string representing the item's label.
/// 
/// Both properties are required and must be provided when creating an instance of [Item].
class Item {
  final int value;
  final String label;

  Item({required this.value, required this.label});
}

/// A list of `Item` objects representing radio options, each with a unique
/// value and label. This list is used to populate radio button selections
/// in the UI.
List<Item> items = [
  Item(value: 1, label: 'Radio 1'),
  Item(value: 2, label: 'Radio 2'),
  Item(value: 3, label: 'Radio 3'),
];
