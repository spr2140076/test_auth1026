import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatelessWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: const Text('後払い',style: TextStyle(fontSize: 25, color: Colors.greenAccent))
        ),
        body:
        const Center(child: Text('後払い画面', style: TextStyle(fontSize: 32.0, color: Colors.red)))
    );
  }
}