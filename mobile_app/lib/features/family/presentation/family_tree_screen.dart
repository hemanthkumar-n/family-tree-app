import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class FamilyTreeScreen extends StatelessWidget {
  const FamilyTreeScreen({super.key});

  Widget personCard(String name) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Text(name, textAlign: TextAlign.center),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: const Text('Natakam Family Network')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            personCard('Natakam Malakonda Prasad'),
            personCard('Natakam Sudharani'),
            const SizedBox(height: 20),
            personCard('Natakam Hemanth Kumar'),
            personCard('Keerthi Doguparti'),
            const SizedBox(height: 20),
            personCard('Divya Bharati'),
            personCard('Yuvan Simha'),
            const SizedBox(height: 20),
            personCard('Prasad Doguparti'),
            personCard('Jayamma Doguparti'),
            personCard('Kiran Doguparti'),
          ],
        ),
      ),
    );
  }
}
