import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A stateless widget that displays a table with a title and three rows.
/// 
/// The `TableContainer` widget consists of a `Column` containing a `TitleContainer`
/// and a `Table` with three rows. Each row contains two cells with text.
/// The table has a border with a color of `Colors.white12`.
/// 
/// This widget is useful for displaying tabular data with a consistent layout.
class TableContainer extends StatelessWidget {
  const TableContainer({super.key});

  @override
  Widget build(_) {
    return Column(
      spacing: 10.0,
      children: [
        const TitleContainer(text: "Table"),
        Table(
          border: TableBorder.all(color: Colors.white12),
          children: const [
            TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Table Row 1"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Table Row 1"),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Table Row 2"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Table Row 2"),
                ),
              ],
            ),
            TableRow(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Table Row 3"),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text("Table Row 3"),
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }
}
