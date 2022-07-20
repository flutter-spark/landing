import 'package:flutter/material.dart';
import 'package:landing/providers/providers.dart';
import 'package:provider/provider.dart';

import 'components/components.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool isWaitlistVisible = false;

  @override
  Widget build(BuildContext context) {
    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) => Title(
        title: 'FlutterSpark',
        color: themeProvider.getTheme.colorShade5,
        child: Scaffold(
          backgroundColor: themeProvider.getTheme.colorShade2,
          body: child,
        ),
      ),
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Header(),
                Intro(
                  onWaitlistClick: () => setState(
                    () => isWaitlistVisible = true,
                  ),
                ),
                const OpenSource(),
                const Youtube(),
                Footer(
                  onWaitlistClick: () => setState(
                    () => isWaitlistVisible = true,
                  ),
                ),
              ],
            ),
          ),
          Visibility(
            visible: isWaitlistVisible,
            child: Waitlist(
              onClose: () => setState(() => isWaitlistVisible = false),
            ),
          ),
        ],
      ),
    );
  }
}
