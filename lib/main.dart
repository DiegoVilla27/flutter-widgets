import 'package:flutter/material.dart';
import 'package:flutter_widgets/core/theme/theme.dart';
import 'package:flutter_widgets/core/routes/routes.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeCustom().get(),
      routerConfig: AppRoutes.router,
    );
  }
}
