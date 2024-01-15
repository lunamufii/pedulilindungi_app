import 'package:flutter/material.dart';

class Notif extends StatefulWidget {
  const Notif({super.key});

  @override
  State<Notif> createState() => _NotifState();
}

class _NotifState extends State<Notif> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Notification')),
      // bottomNavigationBar: BottomNavigationPage(),
      body: Center(
        child: Text(
          'Notification Page',
          style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}