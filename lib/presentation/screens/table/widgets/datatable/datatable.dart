import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/table/widgets/datatable/data/data.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A stateless widget that displays a data table within a column layout.
/// 
/// The `TableDataContainer` widget includes a title and a `DataTable` with
/// predefined columns for "Name", "Age", and "Email". It uses a list of
/// user data to populate the rows of the table. The table is styled with
/// a white border and a spacing of 10.0 between the title and the table.
class TableDataContainer extends StatelessWidget {
  const TableDataContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      spacing: 10.0,
      children: [
        const TitleContainer(text: "Data Table"),
        DataTable(
          border: TableBorder.all(color: Colors.white12),
          columns: const [
            DataColumn(label: Text("Name")),
            DataColumn(label: Text("Age")),
            DataColumn(label: Text("Email")),
          ],
          rows: [
            ...getUsers.map((user) {
              return const DataRow(
                cells: [
                  DataCell(Text("Diego")),
                  DataCell(Text("33")),
                  DataCell(Text("diego@gmail.com")),
                ],
              );
            }),
          ],
        ),
      ],
    );
  }
}
