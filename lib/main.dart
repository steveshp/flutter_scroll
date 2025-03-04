import 'package:flutter/material.dart';
import 'screens/auto_scroll_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '자동 스크롤 데모',
      theme: ThemeData(primarySwatch: Colors.blue, useMaterial3: true),
      home: const AutoScrollPage(),
    );
  }
}
