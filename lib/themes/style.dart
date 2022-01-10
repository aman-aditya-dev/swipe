import 'package:flutter/material.dart';

class ColorShades {
  // Primary
  static const Color white = Color(0xffffffff);
  static const Color black = Color(0xff000000);
  static const Color neon = Color(0xff426bff);
  static const Color freeSpeech = Color(0xff3755c1);
  static const Color navy = Color(0xff001a79);
  static const Color marble = Color(0xffffffff);
  static const Color smokeWhite = Color(0xfff9f9f9);
  static const Color grey90 = Color(0xffE5E5E5);
  static const Color grey100 = Color(0xffd9dfee);
  static const Color grey200 = Color(0xffb1bad4);
  static const Color grey300 = Color(0xff647093);
  static const Color bastille = Color(0xff2d2d33);
  static const Color jaguar = Color(0xff272732);

  static const Color amber = Color(0xFFFF8F00);

  // Semantic
  static const Color elfGreen = Color(0xff229d58);
  static const Color darkOrange = Color(0xffff8a00);
  static const Color redOrange = Color(0xfffa313d);

  // Gradients
  static const Color persianIndigo = Color(0xff3c1f94);
  static const Color deepLilac = Color(0xffab58c0);
  static const Color mangoTango = Color(0xffe27100);
  static const Color orange = Color(0xffedaa00);
  static const Color faluRed = Color(0xff82120e);
  static const Color fireBrick = Color(0xffc32322);
  static const Color cinnabar = Color(0xffec5043);
  static const Color crusta = Color(0xffef8351);
  static const Color clinker = Color(0xff3a321b);
  static const Color shadow = Color(0xff89774d);
  static const Color lightBurntOrange = Color(0xffd2bb7e);

  static const Color greyDark = Color(0xff919191);
  static const Color greyLight = Color(0xffC5C5C5);
  static const Color brownDark = Color(0xff98553A);
  static const Color brownLight = Color(0xffD5986E);
  static const Color greenDark = Color(0xff065F62);
  static const Color greenLight = Color(0xff00D1AF);

  // Additionalcolors
  static const Color supernova = Color(0xffffc042);
  static const Color bastille70 = Color(0xff2d2d33);
  static const Color lavender = Color(0xffafc5ff);
  static const Color goldTips = Color(0xffe2b823);
  static const Color suvaGrey = Color(0xff8b8b8b);
  static const Color sepia = Color(0xff9f5e46);
  static const Color lightGold = Color(0xfffffdf8);
  static const Color lightBlue = Color(0xffE9EFFF);
  static const Color darkYellow = Color(0xffffd600);
  static const Color burntOrange = Color(0xfffa313d);
  static const Color lightOrange = Color(0xfffff6d7);
  static const Color flirt = Color(0xffa00067);
  static const Color razzmatazz = Color(0xffdb046F);
  static const Color ghostWhite = Color(0xfff1f3fd);
  static const Color regalBlue = Color(0xff014D6E);

  // Socialmedia
  static const Color facebook = Color(0xff4267b2);
  static const Color discord = Color(0xff7289da);
  static const Color twitter = Color(0xff1da1f2);
  static const Color line = Color(0xff00c300);
  static const Color apple = Color(0xff1c1c1e);
  static const Color pacificBlue = Color(0xff0099cc);

  // Google
  static const Color blue = Color(0xff4285f4);
  static const Color red = Color(0xffdb4437);
  static const Color yellow = Color(0xfff4b400);
  static const Color green = Color(0xff0f9d58);

  static const Color racingGreen = Color(0xff070C0B);

  //Leaderboard Appbar's Tabbar
  static const Color neonAccent = Color(0xff426BFF);

  // tickets progress bar

  static const Color sapGreen = Color(0xff497E2B);
  static const Color darkCharcoal = Color(0xff2D2D33);
  static const Color goldenBrown = Color(0xff876318);
  static const Color lotusDark = Color(0xff7B373A);
  static const Color sapGreenlight = Color(0xff4E9335);
  static const Color sapGreendark = Color(0xffA3DD3D);
  static const Color tuna = Color(0xff34353f);

  static const Color zircon = Color(0xffecf0ff);
  static const Color burntGold = Color(0xffe8a430);

  static const Color lightNeon = Color(0xffecf1ff);
  static const Color profileYellow = Color(0xffffa800);
  static const Color lightYellow = Color(0xffffefcf);
  //snackabr background
  static const Color snackbarSuccessBackground = Color(0xffcde9cc);
  static const Color snackbarErrorBackground = Color(0xffFFECD4);
  static const Color snackbarErrorText = Color(0xffE47C00);
}

/*
variables have been created for the clearly identifiable use cases
usage: Theme.of(context).colorScheme.strokesDisabled)`
for the rest, use the color shades directly by:
1. importing this file
2. doing `ColorShades.myColor`
*/
extension CustomColorScheme on ColorScheme {
  /* Marble - To be used on background color : Bastille, Grey 200, Grey 300 Neon, Dark Orange, Elf Green, Red orange. */
  Color get textPrimaryLight => ColorShades.marble;

  /* Bastille - To be used on background color : Marble, Smoke white, Grey 100. */
  Color get textPrimaryDark => ColorShades.bastille;

  /* Grey 200 - To be used on background color : Marble, Bastille. */
  Color get textSecGray2 => ColorShades.grey200;

  /* Grey 300 - To be used on background color : Marble, Smoke white, Grey 100. */
  Color get textSecGray3 => ColorShades.grey300;

  /* Neon - To be used on background color : Marble, Smoke white. */
  Color get textSecNeon => ColorShades.neon;

  /* Dark Orange - To be used on background color : Marble. */
  Color get textSecOrange => ColorShades.darkOrange;

  Color get textSecYellow => ColorShades.darkYellow;

  Color get textTwitter => ColorShades.twitter;

  Color get textApple => ColorShades.apple;

  Color get smokeWhite => ColorShades.smokeWhite;

  // non text colors
  Color get accent => ColorShades.neon;

  Color get hover => ColorShades.freeSpeech;

  Color get shadowLight =>
      ColorShades.navy.withOpacity(0.08); // cards,headers,footers
  Color get shadowDark => ColorShades.navy.withOpacity(0.24); // buttons
  Color get surface => ColorShades.marble;

  Color get bg => ColorShades.smokeWhite;

  Color get disabled => ColorShades.grey100;

  Color get strokes => ColorShades.grey100;

  Color get strokesDisabled => ColorShades.grey200;

  Color get success => ColorShades.elfGreen;

  Color get successLight => ColorShades.elfGreen.withOpacity(0.1);

  Color get error => ColorShades.redOrange;

  Color get chipBg => ColorShades.darkOrange;

  Color get pillLightOrange => ColorShades.lightOrange;

  Color get pillBackgroundTranslucent => ColorShades.white.withOpacity(0.6);

  Color get textDark => ColorShades.tuna;

  Color get cardBackGround => ColorShades.marble;

  //snackbar
  Color get snackbarSuccessBackground => ColorShades.snackbarSuccessBackground;
  Color get snackbarErrorBackground => ColorShades.snackbarErrorBackground;
  Color get snackbarErrorText => ColorShades.snackbarErrorText;
}

// IMPORTANT: remember to capitalize h5 and body1Black !!!
// `Text(someString.toUpperCase())`
// TextStyle doesn't support capitalisation so you will have to do it manually
// Usage: `style: Theme.of(context).textTheme.title)`
// BOLD = 700, NORMAL = 400
extension CustomTextTheme on TextTheme {
  TextStyle get h1 => TextStyle(
      fontSize: 28.0, fontWeight: FontWeight.w500, height: 28.0 / 28.0);

  TextStyle get h2 => TextStyle(
      fontSize: 24.0, fontWeight: FontWeight.w500, height: 24.0 / 24.0);

  TextStyle get h3 => TextStyle(
      fontSize: 20.0, fontWeight: FontWeight.w500, height: 24.0 / 20.0);

  TextStyle get h4 => TextStyle(
      fontSize: 16.0, fontWeight: FontWeight.w500, height: 20.0 / 16.0);

  TextStyle get h5 => TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w500,
      height: 16.0 / 12.0,
      letterSpacing: 1.0);

  TextStyle get pageTitle => TextStyle(
      fontSize: 16.0, fontWeight: FontWeight.w700, height: 20.0 / 16.0);

  TextStyle get body1Regular => TextStyle(
      fontSize: 14.0, fontWeight: FontWeight.w400, height: 18.0 / 14.0);

  TextStyle get body1Medium => TextStyle(
      fontSize: 14.0, fontWeight: FontWeight.w500, height: 18.0 / 14.0);

  TextStyle get body1Bold => TextStyle(
      fontSize: 14.0, fontWeight: FontWeight.w700, height: 18.0 / 14.0);

  TextStyle get body1Black => TextStyle(
      fontSize: 14.0, fontWeight: FontWeight.w900, height: 18.0 / 14.0);

  TextStyle get body2Regular => TextStyle(
      fontSize: 12.0, fontWeight: FontWeight.w400, height: 16.0 / 12.0);

  TextStyle get body2Medium => TextStyle(
      fontSize: 12.0, fontWeight: FontWeight.w500, height: 16.0 / 12.0);

  TextStyle get body2Bold => TextStyle(
      fontSize: 12.0, fontWeight: FontWeight.w700, height: 16.0 / 12.0);

  TextStyle get body2Italic => TextStyle(
      fontSize: 12.0,
      fontWeight: FontWeight.w400,
      height: 16.0 / 12.0,
      fontStyle: FontStyle.italic);

  TextStyle get body3Medium =>
      TextStyle(fontSize: 16.0, height: 16 / 14, fontWeight: FontWeight.w500);

  TextStyle get formFieldText => TextStyle(
      fontSize: 16.0, fontWeight: FontWeight.w400, letterSpacing: 2.0);

  TextStyle get barlowEmptyStateH1 => TextStyle(
        fontFamily: 'Barlow Condensed',
        fontSize: 38,
        height: 48 / 38,
        fontWeight: FontWeight.w600,
      );

  TextStyle get barlowEmptyStateH2 => TextStyle(
        fontFamily: 'Barlow Condensed',
        fontSize: 36,
        height: 36 / 36,
        fontWeight: FontWeight.w900,
      );

  TextStyle get barlowEmptyStateH3 => TextStyle(
        fontFamily: 'Barlow Condensed',
        fontSize: 16.0,
        height: 20 / 16,
        fontWeight: FontWeight.w600,
      );

  TextStyle get barlowEmptyStateH4 => TextStyle(
        fontFamily: 'Barlow Condensed',
        fontSize: 12.0,
        height: 18 / 12,
        fontWeight: FontWeight.w600,
      );

  TextStyle get smallFontStyle => TextStyle(
      fontSize: 10.0, fontWeight: FontWeight.w500, height: 12.0 / 10.0);

  TextStyle get raceButtonStyle => TextStyle(
      fontFamily: 'Lilita One',
      fontSize: 10.0,
      height: 57 / 50,
      fontWeight: FontWeight.w400);

  TextStyle get mplusBody2Regular => TextStyle(
        fontFamily: 'Rounded Mplus 1c',
        fontSize: 12.0,
        fontWeight: FontWeight.w400,
        height: 16.0 / 12.0,
      );

  TextStyle get mplusH4 => TextStyle(
        fontFamily: 'Rounded Mplus 1c',
        fontSize: 16.0,
        height: 20.0 / 16.0,
        fontWeight: FontWeight.w500,
      );

  TextStyle get mplusFormFieldText => TextStyle(
        fontFamily: 'Rounded Mplus 1c',
        fontSize: 16.0,
        fontWeight: FontWeight.w400,
      );
}

/* 1. Minimum spacing between elements should be 4px & not less than that.
2. All the spacing used in the design system is in multiples of ‘4’. e.g. 4px, 8px, 12px, 16px, 20px, 24px */
class Spacing {
  static const double minSpacing = 4;

  // multiples
  static const double space4 = minSpacing * 1; // 4
  static const double space8 = minSpacing * 2; // 8
  static const double space12 = minSpacing * 3; // 12
  static const double space16 = minSpacing * 4; // 16
  static const double space20 = minSpacing * 5; // 20
  static const double space24 = minSpacing * 6; // 24
  static const double space28 = minSpacing * 7; // 28
  static const double space32 = minSpacing * 8; // 32
  static const double space36 = minSpacing * 9; // 36
  static const double space40 = minSpacing * 10; // 40
  static const double space44 = minSpacing * 11; // 44
  static const double space48 = minSpacing * 12; // 48
}

ThemeData appTheme(BuildContext context) {
  return ThemeData(
    fontFamily: 'Roboto',
    primaryColor: ColorShades.amber,
    textTheme:
        TextTheme().apply(bodyColor: Colors.red, displayColor: Colors.red),
    accentColor: Colors.white,
    appBarTheme: AppBarTheme(backgroundColor: Colors.white),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: TextStyle(
        fontSize: 9.0,
      ),
      selectedItemColor: Colors.amber[800],
      unselectedLabelStyle: TextStyle(
        fontSize: 9.0,
      ),
      unselectedItemColor: ColorShades.clinker,
      backgroundColor: context.colorScheme.textPrimaryLight,
    ),
    //  scaffoldBackgroundColor: const Color(0xFFFBFBFB)
  );
}

ThemeData darkAppTheme(BuildContext context) {
  return ThemeData(
    fontFamily: 'Roboto',
    accentColor: Colors.black,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      selectedLabelStyle: TextStyle(
        fontSize: 9.0,
      ),
      selectedItemColor: ColorShades.amber,
      unselectedLabelStyle: TextStyle(
        fontSize: 9.0,
      ),
      unselectedItemColor: context.colorScheme.textPrimaryLight,
      backgroundColor: context.colorScheme.textPrimaryDark,
    ),
    // scaffoldBackgroundColor: Colors.black,
    primaryColorBrightness: Brightness.dark,
    accentColorBrightness: Brightness.dark,
    brightness: Brightness.dark,
  );
}

class Gradients {
  static LinearGradient silk = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [
      ColorShades.persianIndigo,
      ColorShades.deepLilac,
    ],
  );
  static LinearGradient peach = LinearGradient(
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
    colors: [
      ColorShades.cinnabar,
      ColorShades.crusta,
    ],
  );
  static LinearGradient cherry = LinearGradient(
      begin: Alignment.bottomLeft,
      end: Alignment.topRight,
      colors: [ColorShades.faluRed, Color(0xffC32322)]);

  static LinearGradient green = LinearGradient(
    begin: const Alignment(-1.0, 0.0),
    end: const Alignment(0.6, 0.0),
    colors: <Color>[
      ColorShades.greenDark,
      ColorShades.greenLight,
    ],
  );

  static LinearGradient orange = LinearGradient(
    begin: const Alignment(-1.0, 0.0),
    end: const Alignment(0.6, 0.0),
    colors: <Color>[
      ColorShades.mangoTango,
      ColorShades.orange,
    ],
  );

  static LinearGradient pulp = LinearGradient(
    end: Alignment.centerLeft,
    begin: Alignment.centerRight,
    colors: [Color(0xffEDAA00), Color(0xffE27100)],
  );

  static LinearGradient darkGreen = LinearGradient(
    begin: Alignment.bottomCenter,
    end: Alignment.topCenter,
    colors: [ColorShades.sapGreenlight, ColorShades.sapGreendark],
  );

  static LinearGradient nameless = LinearGradient(
    begin: Alignment.bottomLeft,
    end: Alignment.topRight,
    colors: [Color(0xff11998e), Color(0xff38EF7D)],
  );

  static LinearGradient league = LinearGradient(
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      Color(0xffE2B823),
      Color(0xffC2A025),
      Color(0xffFEE075),
      Color(0xffC2A025),
    ],
  );
  static LinearGradient greenBlue = LinearGradient(
      begin: Alignment.centerLeft,
      end: Alignment.centerRight,
      colors: [
        Color(0xff004563),
        Color(0xff006d9c),
      ]);

  static LinearGradient skeleton = LinearGradient(
    stops: [0, 0.48, 1.0],
    begin: Alignment.centerLeft,
    end: Alignment.centerRight,
    colors: [
      ColorShades.grey300.withOpacity(1),
      ColorShades.grey300.withOpacity(0.3),
      ColorShades.grey300.withOpacity(1),
    ],
  );

  static LinearGradient alphaGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Colors.black.withOpacity(0.0),
      Colors.black.withOpacity(0.75),
      Colors.black.withOpacity(1.0),
    ],
    stops: [0.0, 0.25, 1.0],
  );
}

class Shadows {
  final BuildContext context;

  Shadows(this.context) : super();

  BoxShadow get card => BoxShadow(
        color: Theme.of(context).colorScheme.shadowLight,
        offset: Offset(0, 4),
        blurRadius: 12,
      );

  BoxShadow get cardTopShadow => BoxShadow(
        color: Theme.of(context).colorScheme.shadowLight,
        offset: Offset(0, -4),
        blurRadius: 12,
      );
  get cardWithLessBlurRadius => BoxShadow(
        color: Theme.of(context).colorScheme.shadowLight,
        offset: Offset(0, 4),
        blurRadius: 4,
      );
}

extension ThemeFromContext on BuildContext {
  ThemeData get theme => Theme.of(this);

  TextTheme get textTheme => Theme.of(this).textTheme;

  ColorScheme get colorScheme => Theme.of(this).colorScheme;

  Size get displaySize => MediaQuery.of(this).size;

  double get displayWidth => MediaQuery.of(this).size.width;

  double get displayHeight => MediaQuery.of(this).size.height;
}
