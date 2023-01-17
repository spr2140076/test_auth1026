import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_auth1026/src/screens/Account.dart';
import 'package:test_auth1026/src/screens/Bookmark.dart';
import 'package:test_auth1026/src/screens/Home.dart';
import 'package:test_auth1026/src/screens/Menu.dart';
import 'package:test_auth1026/src/screens/Notification.dart';

import 'Login.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
    title: 'Flutter app',
    home: StreamBuilder<User?>(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          // スプラッシュ画面などに書き換えても良い
          return const SizedBox();
        }
        if (snapshot.hasData) {
          // User が null でなない、つまりサインイン済みのホーム画面へ
          return const MyStatefulWidget();
        }
        // User が null である、つまり未サインインのサインイン画面へ
        return LoginScreen();
      },
    ),
  );
}

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({Key? key}) : super(key: key);

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  static const _screens = [
    HomeScreen(),
    BookmarkScreen(),
    NotificationScreen(),
    AccountScreen(),
    MenuScreen()
  ];

  int _selectedIndex = 0;

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: _screens[_selectedIndex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'ホーム'),
            BottomNavigationBarItem(icon: Icon(Icons.calendar_month), label: 'カレンダー'),
            BottomNavigationBarItem(icon: Icon(Icons.attach_money), label: '後払い'),
            BottomNavigationBarItem(icon: Icon(Icons.book_outlined), label: '残高'),
            BottomNavigationBarItem(icon: Icon(Icons.menu), label: 'メニュー')
          ],
          type: BottomNavigationBarType.fixed,
        ));
  }
}