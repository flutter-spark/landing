import 'package:flutter/material.dart';
import 'package:landing/constants/spacings.dart';
import 'package:landing/providers/providers.dart';
import 'package:provider/provider.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width < 500;

    return SizedBox(
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) => Wrap(
          children: [
            SizedBox(
              width: size.width * (isMobile ? 1 : 0.55),
              child: Padding(
                padding: EdgeInsets.only(left: isMobile ? 10 : 80),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(height: isMobile ? 30 : 120),
                    const TagLine(),
                    SizedBox(height: isMobile ? 20 : 120),
                    Container(
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
                          fontSize: 22,
                          fontWeight: FontWeight.w700,
                          color: themeProvider.getTheme.colorShade2,
                        ),
                      ),
                    ),
                    SizedBox(height: isMobile ? 30 : 0),
                  ],
                ),
              ),
            ),
            Container(
              height: isMobile ? 550 : 800,
              width: size.width * (isMobile ? 1 : 0.45),
              alignment: Alignment.centerRight,
              color: themeProvider.getTheme.colorShade3,
              padding: EdgeInsets.only(
                left: isMobile ? 10 : 0,
                right: isMobile ? 10 : 80,
              ),
              child: Container(
                padding: const EdgeInsets.all(FSSpacings.large),
                decoration: BoxDecoration(
                  color: themeProvider.getTheme.colorShade1,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Image.asset('assets/images/design.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class TagLine extends StatelessWidget {
  const TagLine({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isMobile = MediaQuery.of(context).size.width < 500;

    return SizedBox(
      height: 200,
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) => SelectableText.rich(
          TextSpan(
            style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: isMobile ? 26 : 44,
              fontWeight: FontWeight.w700,
              color: themeProvider.getTheme.colorShade8,
            ),
            children: [
              TextSpan(
                  text: isMobile
                      ? "Coding for beginners can\nget "
                      : "Coding for beginners can get\n"),
              TextSpan(
                text: "hard",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: isMobile ? 28 : 48,
                  fontWeight: FontWeight.w800,
                  color: themeProvider.getTheme.colorShade6,
                  decoration: TextDecoration.underline,
                  decorationThickness: 3,
                ),
              ),
              const TextSpan(text: " and "),
              TextSpan(
                text: "confusing",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: isMobile ? 28 : 48,
                  fontWeight: FontWeight.w800,
                  color: themeProvider.getTheme.colorShade6,
                  decoration: TextDecoration.underline,
                  decorationThickness: 3,
                ),
              ),
              TextSpan(
                text: isMobile
                    ? ",\nLet's make it \nImpossibly "
                    : ",\nLet's make it Impossibly ",
              ),
              TextSpan(
                text: "simple",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: isMobile ? 28 : 48,
                  fontWeight: FontWeight.w800,
                  color: themeProvider.getTheme.colorShade6,
                  decoration: TextDecoration.underline,
                  decorationThickness: 3,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
