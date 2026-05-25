import 'package:flutter/material.dart';

class SelfProfileScreen extends StatelessWidget {
  const SelfProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Create Your Profile')),
      body: const Center(
        child: Text('Self profile onboarding placeholder'),
      ),
    );
  }
}
