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
        color: themeProvider.getTheme.colorShade8,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: size.width * 0.55,
              height: size.height * 0.4,
              color: themeProvider.getTheme.colorShade7,
              child: Center(
                child: SelectableText.rich(
                  TextSpan(
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: 31,
                      letterSpacing: 1.5,
                      fontWeight: FontWeight.w600,
                      color: themeProvider.getTheme.colorShade2,
                    ),
                    children: [
                      const TextSpan(text: 'Each line of code is\n'),
                      TextSpan(
                        text: 'open source',
                        style: TextStyle(
                          fontSize: 49,
                          color: themeProvider.getTheme.colorShade4,
                          decoration: TextDecoration.underline,
                          decorationThickness: 3,
                        ),
                      ),
                      const TextSpan(
                        text: '\non GitHub!!!',
                        style: TextStyle(
                          fontSize: 48,
                        ),
                      )
                    ],
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(
              width: size.width * 0.45,
              height: size.height * 0.4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  const SizedBox(height: FSSpacings.medium),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: const [
                      GitHubTile(
                        name: 'server',
                        description: 'The backend code of FlutterSpark',
                      ),
                      GitHubTile(
                        name: 'app',
                        description: 'The frontend code of FlutterSpark',
                      ),
                      SizedBox(width: 80),
                    ],
                  ),
                  const SizedBox(height: FSSpacings.medium),
                  const Padding(
                    padding: EdgeInsets.only(right: 80),
                    child: GitHubTile(
                      name: 'landing',
                      description: 'The webpage, you are looking now!!!',
                      isHorizontalCard: true,
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
