import 'package:flutter_clean_architecture/flutter_clean_architecture.dart';

import './src/app/pages/home/home_view.dart';
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    FlutterCleanArchitecture.debugModeOn();
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primaryColor: Color(0xFFF5F5F5),
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: Colors.blue,
        useMaterial3: true,
      ),
      home: const HomePage(title: 'Flutter Clean Demo Page'),
    );
  }
}
