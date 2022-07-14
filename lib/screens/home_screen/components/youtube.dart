// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:landing/constants/constants.dart';
import 'package:landing/providers/providers.dart';
import 'package:provider/provider.dart';

class Youtube extends StatelessWidget {
  const Youtube({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) => Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            width: size.width * 0.55,
            child: Padding(
              padding: const EdgeInsets.all(FSSpacings.extraLarge),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: 42,
                    fontWeight: FontWeight.w800,
                    color: themeProvider.getTheme.colorShade8,
                  ),
                  children: const [
                    TextSpan(text: 'Entire project will be coded Live\non '),
                    TextSpan(
                      text: 'YouTube',
                      style: TextStyle(
                        color: FSColors.youtubeRed,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          InkWell(
            onTap: () {
              html.window.open(
                'https://www.youtube.com/channel/UCVU5ARuJYkbtPphcIeZMwsg',
                "_blank",
              );
            },
            child: SizedBox(
              width: size.width * 0.45,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: FSSpacings.extraLarge,
                ),
                color: themeProvider.getTheme.colorShade3,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(96),
                      child: Image.asset(
                        'assets/images/yt_logo.png',
                        height: 192,
                      ),
                    ),
                    const SizedBox(width: FSSpacings.extraLarge),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hemish - The Coder Book',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 36,
                            fontWeight: FontWeight.w600,
                            color: themeProvider.getTheme.colorShade8,
                          ),
                        ),
                        Row(
                          children: [
                            Container(
                              height: 20,
                              width: 20,
                              decoration: BoxDecoration(
                                color: FSColors.youtubeRed,
                                borderRadius: BorderRadius.circular(10),
                              ),
                            ),
                            const SizedBox(width: FSSpacings.small),
                            const Text(
                              'Live',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Manrope',
                                fontSize: 26,
                                fontWeight: FontWeight.w400,
                                color: FSColors.youtubeRed,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
