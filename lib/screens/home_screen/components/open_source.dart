// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:landing/constants/constants.dart';
import 'package:landing/providers/providers.dart';
import 'package:provider/provider.dart';

class OpenSource extends StatelessWidget {
  const OpenSource({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width < 500;

    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) => Container(
        color: themeProvider.getTheme.colorShade8,
        child: Wrap(
          crossAxisAlignment: WrapCrossAlignment.start,
          children: [
            Container(
              width: size.width * (isMobile ? 1 : 0.55),
              height: size.height * (isMobile ? 0.3 : 0.5),
              color: themeProvider.getTheme.colorShade7,
              child: Center(
                child: SelectableText.rich(
                  TextSpan(
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: isMobile ? 23 : 31,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w600,
                      color: themeProvider.getTheme.colorShade2,
                    ),
                    children: [
                      const TextSpan(text: 'Each line of code is\n'),
                      TextSpan(
                        text: 'open source',
                        style: TextStyle(
                          fontSize: isMobile ? 38 : 49,
                          color: themeProvider.getTheme.colorShade4,
                          decoration: TextDecoration.underline,
                          decorationThickness: 3,
                        ),
                      ),
                      TextSpan(
                        text: '\non GitHub!!!',
                        style: TextStyle(fontSize: isMobile ? 38 : 48),
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              width: size.width * (isMobile ? 1 : 0.45),
              height: size.height * (isMobile ? 0.75 : 0.5),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: FSSpacings.medium),
                  Wrap(
                    children: [
                      GitHubTile(
                        name: 'server',
                        description: 'The backend code of FlutterSpark',
                        width: size.width * (isMobile ? 1 : 0.17),
                      ),
                      SizedBox(
                        height: isMobile ? FSSpacings.medium : 0,
                        width: isMobile ? 10 : 0,
                      ),
                      GitHubTile(
                        name: 'app',
                        description: 'The frontend code of FlutterSpark',
                        width: size.width * (isMobile ? 1 : 0.17),
                      ),
                      SizedBox(width: isMobile ? 0 : 80),
                    ],
                  ),
                  const SizedBox(height: FSSpacings.medium),
                  Padding(
                    padding: EdgeInsets.only(right: isMobile ? 0 : 80),
                    child: GitHubTile(
                      name: 'landing',
                      description: 'The webpage, you are looking now!!!',
                      width: size.width * (isMobile ? 1 : 0.34),
                    ),
                  ),
                  const SizedBox(height: FSSpacings.medium),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class GitHubTile extends StatelessWidget {
  const GitHubTile(
      {Key? key,
      required this.name,
      required this.description,
      required this.width})
      : super(key: key);

  final String name;
  final String description;
  final double width;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => html.window.open(
        'https://github.com/flutter-spark/$name',
        "_blank",
      ),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) => SizedBox(
          width: width,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: FSSpacings.small),
            child: Container(
              height: 175,
              padding: const EdgeInsets.all(FSSpacings.medium),
              decoration: BoxDecoration(
                color: themeProvider.getTheme.colorShade7,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    name,
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 24,
                      fontWeight: FontWeight.w600,
                      color: themeProvider.getTheme.colorShade2,
                    ),
                  ),
                  const SizedBox(height: FSSpacings.medium),
                  Text(
                    description,
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 22,
                      fontWeight: FontWeight.w600,
                      color: themeProvider.getTheme.colorShade3,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
