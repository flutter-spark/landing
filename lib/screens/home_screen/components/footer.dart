import 'package:flutter/material.dart';
import 'package:landing/constants/constants.dart';
import 'package:landing/providers/providers.dart';
import 'package:provider/provider.dart';

class Footer extends StatelessWidget {
  const Footer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) => Column(
        children: [
          Container(
            width: size.width,
            height: 280,
            alignment: Alignment.bottomCenter,
            color: themeProvider.getTheme.colorShade7,
            child: Container(
              width: size.width * 0.55,
              height: 200,
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
                    fontSize: 28,
                    fontWeight: FontWeight.w800,
                    color: themeProvider.getTheme.colorShade8,
                  ),
                  children: [
                    const TextSpan(text: 'Want to know more about '),
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
            height: 280,
            alignment: Alignment.topCenter,
            color: themeProvider.getTheme.colorShade8,
            child: Container(
              width: size.width * 0.55,
              height: 200,
              alignment: Alignment.topCenter,
              decoration: BoxDecoration(
                color: themeProvider.getTheme.colorShade2,
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(20),
                ),
              ),
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
                    fontSize: 28,
                    fontWeight: FontWeight.w700,
                    color: themeProvider.getTheme.colorShade2,
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
