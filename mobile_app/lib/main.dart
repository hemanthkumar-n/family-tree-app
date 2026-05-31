import 'package:flutter/material.dart';
import 'features/onboarding/presentation/welcome_screen.dart';
import 'features/family/presentation/vri_demo_screen.dart';

void main() {
  runApp(const VamshaApp());
}

class VanshaApp extends StatelessWidget {
  const VanshaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vamsha',
      debugShowCheckedModeBanner: false,
      home: const VRIDemoScreen(),
    );
  }
}
