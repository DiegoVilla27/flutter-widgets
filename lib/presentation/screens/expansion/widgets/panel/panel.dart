import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/expansion/widgets/panel/content/content.dart';
import 'package:flutter_widgets/presentation/screens/expansion/widgets/panel/data/data.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A stateful widget that acts as a container for an expansion panel.
///
/// This widget is responsible for creating and managing the state of an
/// expansion panel, facilitating the expansion and collapse of its content.
class ExpansionPanelContainer extends StatefulWidget {
  const ExpansionPanelContainer({super.key});

  @override
  State<ExpansionPanelContainer> createState() =>
      _ExpansionPanelContainerState();
}

class _ExpansionPanelContainerState extends State<ExpansionPanelContainer> {
  @override
  Widget build(_) {
    return Column(
      spacing: 10.0,
      children: [
        const TitleContainer(text: "Panel"),
        ExpansionPanelList(
          expansionCallback: (int index, bool isExpanded) {
            setState(() {
              for (int i = 0; i < items.length; i++) {
                items[i].isExpanded = (i == index) ? isExpanded : false;
              }
            });
          },
          dividerColor: Colors.transparent,
          elevation: 3,
          children: buildExpansionPanels(),
        ),
      ],
    );
  }
}
