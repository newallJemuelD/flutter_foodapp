part of styles;

class AppFont {
  static TextStyle getAppFont(
      {FontWeight fontWeight, double fontSize, Color color}) {
    return TextStyle(
      fontWeight: fontWeight,
      fontSize: fontSize,
      color: color,
    );
  }
}

class HeaderFonts {
  static final primaryText = AppFont.getAppFont(
    color: TextColor.primaryColor,
    fontSize: 27,
    fontWeight: FontWeight.bold,
  );
  static final secondaryText = AppFont.getAppFont(
    color: TextColor.primaryColor,
    fontSize: 17,
    fontWeight: FontWeight.bold,
  );
}

class TextFonts {
  static final primaryText = AppFont.getAppFont(
    color: TextColor.primaryColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static final secondaryText = AppFont.getAppFont(
    color: TextColor.secondaryColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
  static final tertiaryText = AppFont.getAppFont(
    color: TextColor.tertiaryColor,
    fontSize: 14,
    fontWeight: FontWeight.normal,
  );
}
