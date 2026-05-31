import 'package:flutter/material.dart';
import 'features/family/presentation/family_tree_screen.dart';

void main() {
  runApp(const VanshaApp());
}

class VanshaApp extends StatelessWidget {
  const VanshaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Vansha',
      debugShowCheckedModeBanner: false,
      home: const FamilyTreeScreen(),
    );
  }
}
