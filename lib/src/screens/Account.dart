import 'package:flutter/material.dart';

class AccountScreen extends StatelessWidget {
  const AccountScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('残高'),
      ),
      body: const Center(
          child: Text('残高画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}