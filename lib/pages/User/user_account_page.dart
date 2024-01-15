import 'package:flutter/material.dart';

class AkunUser extends StatefulWidget {
  const AkunUser({super.key});

  @override
  State<AkunUser> createState() => _AkunUserState();
}

class _AkunUserState extends State<AkunUser> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('User Account')),
      body: Center(
        child: Text(
          'User Account Page',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}