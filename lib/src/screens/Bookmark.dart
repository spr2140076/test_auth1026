import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BookmarkScreen extends StatelessWidget {
  const BookmarkScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('カレンダー'),
      ),
      body: const Center(
          child: Text('カレンダー画面', style: TextStyle(fontSize: 32.0))),
    );
  }
}