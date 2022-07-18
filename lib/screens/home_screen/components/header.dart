import 'package:flutter/material.dart';
import 'package:landing/constants/constants.dart';
import 'package:landing/providers/providers.dart';
import 'package:provider/provider.dart';

class Header extends StatefulWidget {
  const Header({Key? key}) : super(key: key);

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  FSThemes currentTheme = FSThemes.purple;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width < 500;

    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) => Container(
        width: size.width,
        height: isMobile ? 80 : 120,
        color: themeProvider.getTheme.colorShade8,
        padding: EdgeInsets.symmetric(horizontal: isMobile ? 10 : 80),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.all(
                isMobile ? FSSpacings.extraSmall : FSSpacings.small,
              ),
              decoration: BoxDecoration(
                border: Border.all(
                  color: themeProvider.getTheme.colorShade2,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(isMobile ? 10 : 20),
              ),
              child: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(isMobile ? 5 : 10),
                    child: Image.asset(
                      'assets/images/logo.png',
                      width: isMobile ? 24 : 56,
                    ),
                  ),
                  const SizedBox(width: FSSpacings.medium),
                  Text(
                    'FlutterSpark',
                    style: TextStyle(
                      fontFamily: 'Manrope',
                      fontSize: isMobile ? 20 : 28,
                      fontWeight: FontWeight.w700,
                      color: themeProvider.getTheme.colorShade2,
                    ),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                if (currentTheme == FSThemes.purple) {
                  currentTheme = FSThemes.green;

                  Provider.of<ThemeProvider>(context, listen: false)
                      .changeTheme(currentTheme);
                } else {
                  currentTheme = FSThemes.purple;

                  Provider.of<ThemeProvider>(context, listen: false)
                      .changeTheme(currentTheme);
                }
              },
              child: Container(
                padding: EdgeInsets.symmetric(
                  vertical: isMobile ? FSSpacings.extraSmall : FSSpacings.small,
                  horizontal: isMobile ? FSSpacings.small : FSSpacings.medium,
                ),
                decoration: BoxDecoration(
                  color: themeProvider.getTheme.colorShade2,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Text(
                  'Change Theme',
                  style: TextStyle(
                    fontFamily: 'Manrope',
                    fontSize: isMobile ? 16 : 22,
                    fontWeight: FontWeight.w700,
                    color: themeProvider.getTheme.colorShade8,
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
