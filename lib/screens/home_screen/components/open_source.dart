import 'package:flutter/material.dart';
import 'package:landing/constants/constants.dart';
import 'package:landing/providers/providers.dart';
import 'package:provider/provider.dart';

class OpenSource extends StatelessWidget {
  const OpenSource({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) => Container(
        color: themeProvider.getTheme.colorShade7,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width * 0.45,
              color: themeProvider.getTheme.colorShade8,
              child: Column(
                children: [
                  const SizedBox(height: FSSpacings.extraLarge),
                  SelectableText.rich(
                    TextSpan(
                      style: TextStyle(
                        fontFamily: 'Manrope',
                        fontSize: 36,
                        fontWeight: FontWeight.w600,
                        color: themeProvider.getTheme.colorShade2,
                      ),
                      children: [
                        const TextSpan(text: 'Each line of code is '),
                        TextSpan(
                          text: 'open source',
                          style: TextStyle(
                            fontFamily: 'Manrope',
                            fontSize: 38,
                            color: themeProvider.getTheme.colorShade4,
                            decoration: TextDecoration.underline,
                            decorationThickness: 3,
                          ),
                        ),
                        const TextSpan(text: '\non GitHub!!!')
                      ],
                    ),
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: FSSpacings.medium),
                  Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                          GitHubTile(
                            name: 'server',
                            description: 'The backend code of FlutterSpark',
                          ),
                          GitHubTile(
                            name: 'app',
                            description: 'The frontend code of FlutterSpark',
                          ),
                        ],
                      ),
                      const SizedBox(height: FSSpacings.medium),
                      const GitHubTile(
                        name: 'landing',
                        description: 'The webpage, you are looking now!!!',
                        isHorizontalCard: true,
                      ),
                    ],
                  ),
                  const SizedBox(height: FSSpacings.extraLarge),
                ],
              ),
            ),
            SizedBox(
              width: size.width * 0.55,
              child: Column(
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
      this.isHorizontalCard = false})
      : super(key: key);

  final String name;
  final String description;
  final bool isHorizontalCard;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) => Container(
        width: isHorizontalCard
            ? (size.width * 0.25 + FSSpacings.medium)
            : size.width * 0.125,
        // height: isHorizontalCard ? 150 : 250,
        margin: const EdgeInsets.symmetric(horizontal: FSSpacings.small),
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
    );
  }
}
