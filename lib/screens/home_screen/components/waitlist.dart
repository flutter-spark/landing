import 'package:flutter/material.dart';
import 'package:landing/constants/constants.dart';
import 'package:landing/providers/providers.dart';
import 'package:provider/provider.dart';

class Waitlist extends StatelessWidget {
  const Waitlist({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    bool isMobile = size.width < 500;

    return Consumer<ThemeProvider>(
      builder: (context, themeProvider, child) => Container(
        width: size.width,
        height: size.height,
        alignment: Alignment.center,
        color: Colors.black.withOpacity(0.6),
        child: Container(
          height: size.height * (isMobile ? 0.3 : 0.25),
          width: size.width * (isMobile ? 0.8 : 0.2),
          padding: const EdgeInsets.all(FSSpacings.medium),
          decoration: BoxDecoration(
            color: themeProvider.getTheme.colorShade1,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Join Waitlist',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.w600,
                      color: themeProvider.getTheme.colorShade8,
                    ),
                  ),
                  Icon(
                    Icons.close,
                    size: 30,
                    color: themeProvider.getTheme.colorShade6,
                  ),
                ],
              ),
              const SizedBox(height: FSSpacings.medium),
              Container(
                padding: const EdgeInsets.symmetric(
                  vertical: FSSpacings.extraSmall,
                  horizontal: FSSpacings.medium,
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  border: Border.all(
                    width: 2,
                    color: themeProvider.getTheme.colorShade5,
                  ),
                ),
                child: TextField(
                  autocorrect: false,
                  autofillHints: const [AutofillHints.email],
                  keyboardType: TextInputType.emailAddress,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                    color: themeProvider.getTheme.colorShade8,
                  ),
                  decoration: const InputDecoration(
                    border: InputBorder.none,
                    hintText: 'e-mail',
                  ),
                ),
              ),
              const Spacer(),
              Container(
                decoration: BoxDecoration(
                  color: themeProvider.getTheme.colorShade7,
                  borderRadius: BorderRadius.circular(10),
                ),
                padding: EdgeInsets.symmetric(
                  vertical: isMobile ? FSSpacings.small : FSSpacings.medium,
                  horizontal: isMobile ? FSSpacings.medium : FSSpacings.large,
                ),
                child: Text(
                  'Join Now!!!',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w400,
                    color: themeProvider.getTheme.colorShade1,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
