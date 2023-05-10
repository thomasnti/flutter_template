import 'package:flutter/material.dart';

import 'dependency_injection/dependency_injection.dart';
import 'features/login/presentation/pages/login_page.dart';

void main() {
  configureDependencies();
  runApp(const TemplateApp());
}

class TemplateApp extends StatelessWidget {
  const TemplateApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginScreen(),
    );
  }
}
