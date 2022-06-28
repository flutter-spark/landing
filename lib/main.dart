import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'FlutterSpark',
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(
        child: Text(
          'The site is updated soon.\nCreation of entire project will be live streamed or in form of recorded video on youtube channel\nHemish - The Coder Book',
          style: TextStyle(fontSize: 32, fontWeight: FontWeight.w900),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
