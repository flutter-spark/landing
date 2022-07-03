import 'package:flutter/material.dart';
import 'package:landing/providers/providers.dart';
import 'package:provider/provider.dart';

import 'components/components.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) => Scaffold(
        backgroundColor: themeProvider.getTheme.colorShade2,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: const [
            Header(),
          ],
        ),
      ),
    );
  }
}