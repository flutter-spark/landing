import 'package:flutter/material.dart';
import 'package:landing/constants/constants.dart';
import 'package:landing/providers/providers.dart';
import 'package:provider/provider.dart';

class Youtube extends StatelessWidget {
  const Youtube({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SizedBox(
      width: size.width * 0.55,
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) => Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(FSSpacings.extraLarge),
              child: Text(
                'Entire project will be coded Live\non YouTube',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 36,
                  fontWeight: FontWeight.w600,
                  color: themeProvider.getTheme.colorShade2,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 80),
              padding: const EdgeInsets.symmetric(
                vertical: FSSpacings.large,
                horizontal: 40,
              ),
              decoration: BoxDecoration(
                color: themeProvider.getTheme.colorShade2,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
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
            )
          ],
        ),
      ),
    );
  }
}
