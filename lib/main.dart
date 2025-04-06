import 'package:flutter/material.dart';
import 'package:flutter_widgets/core/routes/routes.dart';
import 'package:flutter_widgets/core/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(_) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: ThemeCustom().get(),
      routerConfig: AppRoutes.router,
    );
  }
}
