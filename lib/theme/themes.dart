import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

Color _mainColorShade1 = const Color(0xFFfef7e7);
Color _mainColorShade2 = const Color(0xFFfdf0d0);
Color _mainColorShade3 = const Color(0xFFfce9b9);
Color _mainColorShade4 = const Color(0xFFfbe1a2);
Color _mainColorShade5 = const Color(0xFFfada8b);
Color _mainColorShade6 = const Color(0xFFf9d373);
Color _mainColorShade7 = const Color(0xFFf8cb5c);
Color _mainColorShade8 = const Color(0xFFf7c445);
Color _mainColorShade9 = const Color(0xFFf6bd2e);

Color _primaryColor = const Color(0xFFf7c445);
MaterialColor _primaryColorSwatch = MaterialColor(
  0xFFf7c445,
  <int, Color>{
    50: _mainColorShade1, //10%
    100: _mainColorShade2, //20%
    200: _mainColorShade3, //30%
    300: _mainColorShade4, //40%
    400: _mainColorShade5, //50%
    500: _mainColorShade6, //60%
    600: _mainColorShade7, //70%
    700: _mainColorShade8, //80%
    800: _mainColorShade9, //90%
    900: _primaryColor, //100%
  },
);

Color _whiteColor = Colors.white;
Color _blackColor = Colors.black;

Color _lightThemeBackground = Colors.white;
Color _darkThemeBackground = Color(0xff000000);

class AppThemes {
  static final lightTheme = ThemeData(
      brightness: Brightness.light,
      primaryColor: _primaryColor,
      primaryColorBrightness: Brightness.light,
      colorScheme: ColorScheme.fromSwatch(primarySwatch: _primaryColorSwatch),
      backgroundColor: _lightThemeBackground,
      scaffoldBackgroundColor: _lightThemeBackground,
      appBarTheme: const AppBarTheme(titleTextStyle: TextStyle(fontFamily: 'Azonix', fontSize: 18), elevation: 0.0),
      bannerTheme: MaterialBannerThemeData(),
      bottomAppBarColor: _whiteColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(),
      bottomSheetTheme: BottomSheetThemeData(backgroundColor: Colors.transparent),
      buttonBarTheme: ButtonBarThemeData(),
      buttonTheme: ButtonThemeData(),
      canvasColor: _whiteColor,
      cardColor: _whiteColor,
      cardTheme: CardTheme(),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all<Color>(_primaryColor),
      ),
      // chipTheme: ChipThemeData(),
      cupertinoOverrideTheme: NoDefaultCupertinoThemeData(),
      dataTableTheme: DataTableThemeData(),
      dialogBackgroundColor: _primaryColor,
      dialogTheme: DialogTheme(
          backgroundColor: const Color(0xffffffff),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          titleTextStyle: TextStyle(color: _primaryColor, fontWeight: FontWeight.w400, fontSize: 24.0, letterSpacing: 0.0),
          contentTextStyle: TextStyle(color: Colors.black)),
      disabledColor: Colors.grey,
      dividerTheme: const DividerThemeData(color: Colors.grey, thickness: 1),
      // drawerTheme : DrawerThemeData(),
      elevatedButtonTheme: ElevatedButtonThemeData(),
      errorColor: Colors.red,
      floatingActionButtonTheme: FloatingActionButtonThemeData(),
      focusColor: Colors.blue.shade500,
      highlightColor: Colors.blue.shade900,
      hintColor: _primaryColor,
      hoverColor: _primaryColor,
      iconTheme: const IconThemeData(color: Colors.grey, size: 28, opacity: 1.0),
      indicatorColor: _primaryColor,
      inputDecorationTheme: InputDecorationTheme(),
      // listTileTheme: ListTileThemeData(),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      navigationRailTheme: NavigationRailThemeData(),
      outlinedButtonTheme: OutlinedButtonThemeData(),
      pageTransitionsTheme: PageTransitionsTheme(),
      platform: TargetPlatform.android,
      popupMenuTheme: PopupMenuThemeData(),
      primaryIconTheme: IconThemeData(),
      primaryTextTheme: TextTheme(),
      progressIndicatorTheme: ProgressIndicatorThemeData(),
      radioTheme: RadioThemeData(),
      scrollbarTheme: ScrollbarThemeData(),
      // selectedRowColor: _primaryColor,
      shadowColor: _primaryColor,
      sliderTheme: SliderThemeData(),
      snackBarTheme: SnackBarThemeData(),
      // splashColor: _primaryColor,
      // splashFactory : InteractiveInkFeatureFactory(),
      switchTheme: SwitchThemeData(),
      tabBarTheme: TabBarTheme(),
      textButtonTheme: TextButtonThemeData(),
      textSelectionTheme: TextSelectionThemeData(),
      textTheme: TextTheme(
        headline1: GoogleFonts.rubik(color: _blackColor, fontWeight: FontWeight.w300, fontSize: 96.0, letterSpacing: -1.5),
        headline2: GoogleFonts.rubik(color: _blackColor, fontWeight: FontWeight.w300, fontSize: 60.0, letterSpacing: -0.5),
        headline3: GoogleFonts.rubik(color: _blackColor, fontWeight: FontWeight.w400, fontSize: 48.0, letterSpacing: 0.0),
        headline4: GoogleFonts.rubik(color: _blackColor, fontWeight: FontWeight.w400, fontSize: 34.0, letterSpacing: 0.25),
        headline5: GoogleFonts.rubik(color: _blackColor, fontWeight: FontWeight.w400, fontSize: 24.0, letterSpacing: 0.0),
        headline6: GoogleFonts.rubik(color: _blackColor, fontWeight: FontWeight.w500, fontSize: 20.0, letterSpacing: 0.15),
        subtitle1: GoogleFonts.rubik(color: _blackColor, fontWeight: FontWeight.w400, fontSize: 16.0, letterSpacing: 0.15),
        subtitle2: GoogleFonts.rubik(color: _blackColor, fontWeight: FontWeight.w500, fontSize: 14.0, letterSpacing: 0.1),
        bodyText1: GoogleFonts.rubik(color: _blackColor, fontWeight: FontWeight.w400, fontSize: 16.0, letterSpacing: 0.5),
        bodyText2: GoogleFonts.rubik(color: _blackColor, fontWeight: FontWeight.w400, fontSize: 14.0, letterSpacing: 0.25),
        button: GoogleFonts.rubik(color: _blackColor, fontWeight: FontWeight.w500, fontSize: 14.0, letterSpacing: 1.25),
        caption: GoogleFonts.rubik(color: _blackColor, fontWeight: FontWeight.w400, fontSize: 12.0, letterSpacing: 0.4),
        overline: GoogleFonts.rubik(color: _blackColor, fontWeight: FontWeight.w400, fontSize: 10.0, letterSpacing: 1.5),
      ),
      timePickerTheme: TimePickerThemeData(),
      // toggleableActiveColor: _primaryColor,
      toggleButtonsTheme: ToggleButtonsThemeData(),
      tooltipTheme: TooltipThemeData(),
      // typography: Typography(),
      // unselectedWidgetColor: _primaryColor,
      visualDensity: VisualDensity());

  static final darkTheme = ThemeData(
      //brightness: Brightness.dark,
      primaryColor: _primaryColor,
      // primaryColorBrightness: Brightness.dark,
      colorScheme: ColorScheme.fromSwatch(primarySwatch: _primaryColorSwatch),
      backgroundColor: _darkThemeBackground,
      scaffoldBackgroundColor: _darkThemeBackground,
      appBarTheme: const AppBarTheme(titleTextStyle: TextStyle(fontFamily: 'Azonix', fontSize: 18), elevation: 0.0),
      bannerTheme: MaterialBannerThemeData(),
      bottomAppBarColor: _whiteColor,
      bottomNavigationBarTheme: BottomNavigationBarThemeData(),
      bottomSheetTheme: BottomSheetThemeData(),
      buttonBarTheme: ButtonBarThemeData(),
      buttonTheme: ButtonThemeData(),
      canvasColor: _whiteColor,
      cardColor: _whiteColor,
      cardTheme: CardTheme(),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all<Color>(_primaryColor),
      ),
      // chipTheme: ChipThemeData(),
      cupertinoOverrideTheme: NoDefaultCupertinoThemeData(),
      dataTableTheme: DataTableThemeData(),
      dialogBackgroundColor: _primaryColor,
      dialogTheme: DialogTheme(
          backgroundColor: const Color(0xffffffff),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          titleTextStyle: TextStyle(color: _primaryColor, fontWeight: FontWeight.w400, fontSize: 24.0, letterSpacing: 0.0),
          contentTextStyle: TextStyle(color: Colors.black)),
      disabledColor: Colors.grey,
      dividerTheme: const DividerThemeData(color: Colors.grey, thickness: 1),
      // drawerTheme : DrawerThemeData(),
      elevatedButtonTheme: ElevatedButtonThemeData(),
      errorColor: Colors.red,
      floatingActionButtonTheme: FloatingActionButtonThemeData(),
      focusColor: Colors.blue.shade500,
      highlightColor: Colors.blue.shade900,
      hintColor: _primaryColor,
      hoverColor: _primaryColor,
      iconTheme: const IconThemeData(color: Colors.grey, size: 28, opacity: 1.0),
      indicatorColor: _primaryColor,
      inputDecorationTheme: InputDecorationTheme(),
      // listTileTheme: ListTileThemeData(),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      navigationRailTheme: NavigationRailThemeData(),
      outlinedButtonTheme: OutlinedButtonThemeData(),
      pageTransitionsTheme: PageTransitionsTheme(),
      platform: TargetPlatform.android,
      popupMenuTheme: PopupMenuThemeData(),
      primaryIconTheme: IconThemeData(),
      primaryTextTheme: TextTheme(),
      progressIndicatorTheme: ProgressIndicatorThemeData(),
      radioTheme: RadioThemeData(),
      scrollbarTheme: ScrollbarThemeData(),
      // selectedRowColor: _primaryColor,
      shadowColor: _primaryColor,
      sliderTheme: SliderThemeData(),
      snackBarTheme: SnackBarThemeData(),
      // splashColor: _primaryColor,
      // splashFactory : InteractiveInkFeatureFactory(),
      switchTheme: SwitchThemeData(),
      tabBarTheme: TabBarTheme(),
      textButtonTheme: TextButtonThemeData(),
      textSelectionTheme: TextSelectionThemeData(),
      textTheme: TextTheme(
        headline1: TextStyle(color: _whiteColor, fontWeight: FontWeight.w300, fontSize: 96.0, letterSpacing: -1.5),
        headline2: TextStyle(color: _whiteColor, fontWeight: FontWeight.w300, fontSize: 60.0, letterSpacing: -0.5),
        headline3: TextStyle(color: _whiteColor, fontWeight: FontWeight.w400, fontSize: 48.0, letterSpacing: 0.0),
        headline4: TextStyle(color: _whiteColor, fontWeight: FontWeight.w400, fontSize: 34.0, letterSpacing: 0.25),
        headline5: TextStyle(color: _whiteColor, fontWeight: FontWeight.w400, fontSize: 24.0, letterSpacing: 0.0),
        headline6: TextStyle(color: _whiteColor, fontWeight: FontWeight.w500, fontSize: 20.0, letterSpacing: 0.15),
        subtitle1: TextStyle(color: _whiteColor, fontWeight: FontWeight.w400, fontSize: 16.0, letterSpacing: 0.15),
        subtitle2: TextStyle(color: _whiteColor, fontWeight: FontWeight.w500, fontSize: 14.0, letterSpacing: 0.1),
        bodyText1: TextStyle(color: _whiteColor, fontWeight: FontWeight.w400, fontSize: 16.0, letterSpacing: 0.5),
        bodyText2: TextStyle(color: _whiteColor, fontWeight: FontWeight.w400, fontSize: 14.0, letterSpacing: 0.25),
        button: TextStyle(color: _whiteColor, fontWeight: FontWeight.w500, fontSize: 14.0, letterSpacing: 1.25),
        caption: TextStyle(color: _whiteColor, fontWeight: FontWeight.w400, fontSize: 12.0, letterSpacing: 0.4),
        overline: TextStyle(color: _whiteColor, fontWeight: FontWeight.w400, fontSize: 10.0, letterSpacing: 1.5),
      ),
      timePickerTheme: TimePickerThemeData(),
      // toggleableActiveColor: _primaryColor,
      toggleButtonsTheme: ToggleButtonsThemeData(),
      tooltipTheme: TooltipThemeData(),
      // typography: Typography(),
      // unselectedWidgetColor: _primaryColor,
      visualDensity: VisualDensity());
}
