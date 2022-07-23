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
    bool isMobile = size.width < 500;

    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) => Wrap(
        crossAxisAlignment: WrapCrossAlignment.center,
        children: [
          SizedBox(
            width: size.width * (isMobile ? 1 : 0.55),
            child: Padding(
              padding: const EdgeInsets.all(FSSpacings.extraLarge),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: isMobile ? 28 : 42,
                    fontWeight: FontWeight.w800,
                    color: themeProvider.getTheme.colorShade8,
                  ),
                  children: [
                    TextSpan(
                      text: isMobile
                          ? 'Entire project will be\ncoded Live on '
                          : 'Entire project will be coded Live\non ',
                    ),
                    const TextSpan(
                      text: 'YouTube',
                      style: TextStyle(color: FSColors.youtubeRed),
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
              width: size.width * (isMobile ? 1 : 0.45),
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical:
                      isMobile ? FSSpacings.medium : FSSpacings.extraLarge,
                  horizontal: isMobile ? 10 : 0,
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
                        width: isMobile ? 96 : 192,
                      ),
                    ),
                    SizedBox(
                      width:
                          isMobile ? FSSpacings.medium : FSSpacings.extraLarge,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Hemish',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: isMobile ? 22 : 36,
                            fontWeight: FontWeight.w600,
                            color: themeProvider.getTheme.colorShade8,
                          ),
                        ),
                        Text(
                          'The Coder Book',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: isMobile ? 18 : 32,
                            fontWeight: FontWeight.w600,
                            color: themeProvider.getTheme.colorShade8,
                          ),
                        ),
                        const SizedBox(height: FSSpacings.small),
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
                            const SizedBox(width: FSSpacings.extraSmall),
                            Text(
                              'Live',
                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontFamily: 'Manrope',
                                fontSize: isMobile ? 16 : 26,
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
