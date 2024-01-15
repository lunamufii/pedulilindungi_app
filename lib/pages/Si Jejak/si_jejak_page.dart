import 'package:flutter/material.dart';

class SiJejak extends StatefulWidget {
  const SiJejak({super.key});

  @override
  State<SiJejak> createState() => _SiJejakState();
}

class _SiJejakState extends State<SiJejak> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Si Jejak')),
      body: Center(
        child: Text(
          'Si Jejak Page',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}