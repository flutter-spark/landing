import 'package:flutter/material.dart';
import 'package:landing/providers/providers.dart';
import 'package:provider/provider.dart';
import 'constants/constants.dart';
import 'providers/providers.dart';

void main() {
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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: InkWell(
          onTap: () {
            Provider.of<ThemeProvider>(context, listen: false)
                .changeTheme(FSThemes.green);
          },
          child: Consumer<ThemeProvider>(
            builder: (context, themeProvider, child) => Text(
              (MediaQuery.of(context).size.width < 400).toString(),
              style: TextStyle(
                fontFamily: 'Manrope',
                fontSize: MediaQuery.of(context).size.width < 400 ? 32 : 46,
                fontWeight: FontWeight.w700,
                color: themeProvider.getTheme.colorShade4,
              ),
              textAlign: TextAlign.center,
            ),
          ),
        ),
      ),
    );
  }
}
