import 'package:flutter/material.dart';
import 'package:landing/constants/spacings.dart';
import 'package:landing/providers/providers.dart';
import 'package:provider/provider.dart';

class Intro extends StatelessWidget {
  const Intro({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return Padding(
      padding: const EdgeInsets.only(left: 80),
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) => Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const SizedBox(height: 80),
                const TagLine(),
                const SizedBox(height: 120),
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
              ],
            ),
            Container(
              height: 800,
              width: size.width * 0.45,
              alignment: Alignment.centerRight,
              color: themeProvider.getTheme.colorShade3,
              padding: const EdgeInsets.only(right: 80),
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
    return SizedBox(
      height: 200,
      child: Consumer<ThemeProvider>(
        builder: (context, themeProvider, child) => SelectableText.rich(
          TextSpan(
            style: TextStyle(
              fontFamily: 'Manrope',
              fontSize: 44,
              fontWeight: FontWeight.w700,
              color: themeProvider.getTheme.colorShade8,
            ),
            children: [
              const TextSpan(text: "Coding for beginners can get"),
              TextSpan(
                text: "\nhard",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 48,
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
                  fontSize: 48,
                  fontWeight: FontWeight.w800,
                  color: themeProvider.getTheme.colorShade6,
                  decoration: TextDecoration.underline,
                  decorationThickness: 3,
                ),
              ),
              const TextSpan(text: ",\nLet's make it Impossibly "),
              TextSpan(
                text: "simple",
                style: TextStyle(
                  fontFamily: 'Manrope',
                  fontSize: 52,
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
