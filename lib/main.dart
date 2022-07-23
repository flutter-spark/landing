import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:landing/firebase_options.dart';
import 'package:landing/providers/providers.dart';
import 'package:provider/provider.dart';
import 'providers/providers.dart';
import 'screens/screens.dart';

Future<void> main() async {
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
);

  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider<ThemeProvider>(create: (_) => ThemeProvider())
      ],
      child: const MyApp(),
    ),
  );
}

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
