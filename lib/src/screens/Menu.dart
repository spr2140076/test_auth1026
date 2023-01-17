import 'package:flutter/material.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('メニュー'),
      ),
      body: const Center(
          child: Text('メニュー画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}