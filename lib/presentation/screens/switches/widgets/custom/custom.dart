import 'package:flutter/material.dart';
import 'package:flutter_widgets/presentation/screens/switches/widgets/custom/item/item.dart';
import 'package:flutter_widgets/presentation/shared/widgets/title/title.dart';

/// A custom container widget that displays a title and a switch item.
/// 
/// This widget is a stateless container that includes a title and a custom
/// switch item. The switch item can be toggled between active and inactive
/// states, with customizable colors for each state.
/// 
/// The `SwitchCustomContainer` uses the current theme's color scheme to
/// determine the active colors for the switch item, while default colors
/// are used for the inactive state.
class SwitchCustomContainer extends StatelessWidget {
  const SwitchCustomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context).colorScheme;

    return Column(
      spacing: 10.0,
      children: [
        const TitleContainer(text: "Custom"),
        SwitchItemCustom(
          isActive: false,
          colorBackgroundActive: theme.onPrimary,
          colorBorderActive: theme.onPrimary,
          colorCircleActive: Colors.deepPurpleAccent,
          colorBackgroundUnActive: Colors.white12,
          colorBorderUnActive: Colors.grey,
          colorCircleUnActive: Colors.grey,
          change: (bool) {},
        ),
      ],
    );
  }
}
