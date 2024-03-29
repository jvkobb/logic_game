import 'package:flutter/material.dart';

class Success_Screen extends StatelessWidget {
  const Success_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        body: Center(
          child: Text('SUCCESS!'),
        ),
      ),
    );
  }
}