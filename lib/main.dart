import 'package:flutter/material.dart';
import 'package:flutter_widgets/core/routes/routes_config.dart';
import 'package:flutter_widgets/core/theme/theme.dart';

void main() {
  runApp(const MainApp());
}

/// A stateless widget that serves as the main entry point for the application.
/// 
/// This widget builds a `MaterialApp` configured with a custom theme and
/// routing configuration. The application does not display the debug banner
/// and is titled "Widgets App".
class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(_) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Widgets App",
      theme: ThemeCustom().get(),
      routerConfig: AppRoutes.router,
    );
  }
}
