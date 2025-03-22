import 'package:flutter/material.dart';

class SideMenuScreen extends StatelessWidget {
  const SideMenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Side Menu'),
      ),
      body: const Center(
        child: Text('Side Menu Screen'),
      ),
    );
  }
}
