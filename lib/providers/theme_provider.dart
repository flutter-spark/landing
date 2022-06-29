import 'package:flutter/material.dart';
import '../constants/constants.dart';
import '../models/models.dart';

class ThemeProvider with ChangeNotifier {
  FSThemeData _theme = FSThemeData(
    colorShade1: FSColors.purpleShade1,
    colorShade2: FSColors.purpleShade2,
    colorShade3: FSColors.purpleShade3,
    colorShade4: FSColors.purpleShade4,
    colorShade5: FSColors.purpleShade5,
    colorShade6: FSColors.purpleShade6,
    colorShade7: FSColors.purpleShade7,
    colorShade8: FSColors.purpleShade8,
  );
  FSThemeData get getTheme => _theme;

  void changeTheme(FSThemes theme) {
    switch (theme) {
      case FSThemes.purple:
        _theme = FSThemeData(
          colorShade1: FSColors.purpleShade1,
          colorShade2: FSColors.purpleShade2,
          colorShade3: FSColors.purpleShade3,
          colorShade4: FSColors.purpleShade4,
          colorShade5: FSColors.purpleShade5,
          colorShade6: FSColors.purpleShade6,
          colorShade7: FSColors.purpleShade7,
          colorShade8: FSColors.purpleShade8,
        );
        break;
      case FSThemes.green:
        _theme = FSThemeData(
          colorShade1: FSColors.greenShade1,
          colorShade2: FSColors.greenShade2,
          colorShade3: FSColors.greenShade3,
          colorShade4: FSColors.greenShade4,
          colorShade5: FSColors.greenShade5,
          colorShade6: FSColors.greenShade6,
          colorShade7: FSColors.greenShade7,
          colorShade8: FSColors.greenShade8,
        );
        break;
    }

    notifyListeners();
  }
}
