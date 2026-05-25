import 'package:flutter/material.dart';
import '../../../../core/theme/app_colors.dart';

class FamilyTreeScreen extends StatelessWidget {
  const FamilyTreeScreen({super.key});

  Widget node(String name, {bool center = false}) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: center ? AppColors.primary : Colors.white,
        borderRadius: BorderRadius.circular(18),
        boxShadow: const [BoxShadow(blurRadius: 8, color: Colors.black12)],
      ),
      child: Text(
        name,
        textAlign: TextAlign.center,
        style: TextStyle(
          color: center ? Colors.white : Colors.black87,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      appBar: AppBar(title: const Text('Vansha Relationship Graph')),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                node('Natakam Malakonda Prasad'),
                const SizedBox(width: 12),
                node('Natakam Sudharani'),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                node('Divya Bharati'),
                const SizedBox(width: 12),
                node('Natakam Hemanth Kumar', center: true),
                const SizedBox(width: 12),
                node('Keerthi Doguparti'),
              ],
            ),
            const SizedBox(height: 20),
            node('Natakam Yuvan Simha'),
            const SizedBox(height: 32),
            const Text('Expandable Family Branches'),
            const SizedBox(height: 16),
            Wrap(
              spacing: 12,
              runSpacing: 12,
              alignment: WrapAlignment.center,
              children: [
                node('Prasad Doguparti'),
                node('Jayamma Doguparti'),
                node('Kiran Doguparti'),
                node('Mamidi Suresh Kumar'),
                node('Ramesh Babu'),
                node('Radha Rani'),
                node('Mamidi Ganesh Kumar'),
              ],
            )
          ],
        ),
      ),
    );
  }
}
