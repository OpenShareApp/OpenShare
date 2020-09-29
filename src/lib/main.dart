import 'package:OpenShare/features/home/presentation/pages/home_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(OpenShareApp());
}

class OpenShareApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'OpenShare',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        body: HomePage(),
      ),
    );
  }
}
