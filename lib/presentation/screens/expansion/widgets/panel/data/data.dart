/// Represents an item in an accordion widget with a title, content, and
/// an expansion state.
///
/// The [AccordionItem] class holds the data for a single accordion item,
/// including its [title], [content], and whether it is currently
/// [isExpanded].
class AccordionItem {
  final String title;
  final String content;
  bool isExpanded;

  AccordionItem({
    required this.title,
    required this.content,
    this.isExpanded = false,
  });
}

/// A list of `AccordionItem` objects representing FAQ entries.
///
/// Each `AccordionItem` contains a `title` and `content` that provide
/// information about Flutter, Dart, and Widgets. This list can be used
/// to display expandable panels in a UI.
final List<AccordionItem> items = [
  AccordionItem(
    title: "What is Flutter?",
    content: "Flutter is a Google UI framework for cross-platform apps.",
  ),
  AccordionItem(
    title: "What is Dart?",
    content: "Dart is the programming language used by Flutter.",
  ),
  AccordionItem(
    title: "What is a Widget?",
    content: "It is the basic building block of UI in Flutter.",
  ),
];
