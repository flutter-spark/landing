import 'package:flutter/material.dart';
import 'package:landing/constants/constants.dart';
import 'package:landing/providers/providers.dart';
import 'package:provider/provider.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key, required this.onWaitlistClick}) : super(key: key);

  final GestureTapCallback onWaitlistClick;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width < 500;

    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) => Column(
        children: [
          Container(
            width: size.width,
            height: isMobile ? 220 : 280,
            alignment: Alignment.bottomCenter,
            color: themeProvider.getTheme.colorShade7,
            child: Container(
              width: isMobile ? size.width - 60 : size.width * 0.55,
              height: isMobile ? 140 : 200,
              padding: const EdgeInsets.all(FSSpacings.small),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                color: themeProvider.getTheme.colorShade2,
                borderRadius: const BorderRadius.vertical(
                  top: Radius.circular(20),
                ),
              ),
              child: RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  style: TextStyle(
                    fontSize: isMobile ? 22 : 32,
                    fontWeight: FontWeight.w800,
                    color: themeProvider.getTheme.colorShade8,
                  ),
                  children: [
                    TextSpan(
                        text: isMobile
                            ? 'Want to know more\nabout '
                            : 'Want to know more about '),
                    TextSpan(
                      text: 'FlutterSpark',
                      style: TextStyle(
                        color: themeProvider.getTheme.colorShade5,
                      ),
                    ),
                    const TextSpan(
                      text: '?\nContact Us by joining waitlist.',
                    ),
                  ],
                ),
              ),
            ),
          ),
          Container(
            width: size.width,
            height: isMobile ? 120 : 280,
            alignment: Alignment.topCenter,
            color: themeProvider.getTheme.colorShade8,
            child: Container(
              width: isMobile ? size.width - 60 : size.width * 0.55,
              height: isMobile ? 80 : 200,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: themeProvider.getTheme.colorShade2,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
              child: InkWell(
                onTap: onWaitlistClick,
                borderRadius: BorderRadius.circular(10),
                child: Container(
                  padding: const EdgeInsets.symmetric(
                    vertical: FSSpacings.small,
                    horizontal: FSSpacings.large,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: themeProvider.getTheme.colorShade6,
                  ),
                  child: Text(
                    'Join Waitlist',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: isMobile ? 22 : 28,
                      fontWeight: FontWeight.w700,
                      color: themeProvider.getTheme.colorShade2,
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
