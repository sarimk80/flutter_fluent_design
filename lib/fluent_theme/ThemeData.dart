import 'package:flutter/material.dart';

abstract class FluentThemeData {
  /*

  Fluent Blue Theme

  */

  static ThemeData blueTheme() {
    ThemeData blueData = ThemeData(
      primaryIconTheme: IconThemeData(color: Colors.white, size: 20),
      disabledColor: Colors.black.withOpacity(0.5),
      //Icon Themes
      iconTheme: IconThemeData(color: Colors.black, size: 20),
      //Bottom Sheet Theme
      bottomAppBarTheme: BottomAppBarTheme(color: Colors.white, elevation: 5),

      brightness: Brightness.light,
      //Blue Primary Color
      primaryColor: Color(0xff0078d4),
      //Blue Primary Dark Color
      primaryColorDark: Color(0xff005AE9),
      //Accent Color
      accentColor: Color(0xff0078d4),
      //Text Themes
      textTheme: TextTheme(
        subhead: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w500),
        caption: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontFamily: 'packages/fluent_design/Segoe',
        ),
        body1: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'packages/fluent_design/Segoe'),
        body2: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'packages/fluent_design/Segoe'),
        display1: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 25,
            fontFamily: 'packages/fluent_design/Segoe'),
        display2: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: 20,
            fontFamily: 'packages/fluent_design/Segoe'),
        display3: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w200,
            fontSize: 30,
            fontFamily: 'packages/fluent_design/Segoe'),
        display4: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w100,
            fontSize: 45,
            fontFamily: 'packages/fluent_design/Segoe'),
        headline: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w700,
            fontSize: 28,
            fontFamily: 'packages/fluent_design/Segoe'),
        button: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w600,
            fontFamily: 'packages/fluent_design/Segoe',
            fontSize: 15),
        title: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
            fontFamily: 'packages/fluent_design/Segoe'),
        subtitle: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w400),
      ),

      //App Bar Themes
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: Color(0xff0078d4),
        iconTheme: IconThemeData(color: Colors.white, size: 24),
      ),
    );

    return blueData;
  }

  /*

  Fluent Light Theme

  */

  static ThemeData lightTheme({@required Color accentColor}) {
    ThemeData lightData = ThemeData(
      disabledColor: Colors.black.withOpacity(0.5),
      //Light Theme
      iconTheme: IconThemeData(color: Colors.black, size: 20),
      //Bottom App Bar Themes
      bottomAppBarTheme: BottomAppBarTheme(color: Colors.white, elevation: 8),
      brightness: Brightness.dark,
      primaryColor: Colors.white,
      primaryColorDark: Colors.white,
      scaffoldBackgroundColor: Colors.white,
      accentColor: accentColor,
      textTheme: TextTheme(
        button: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w500),
        subhead: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w500),
        caption: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontFamily: 'packages/fluent_design/Segoe',
        ),
        body1: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'packages/fluent_design/Segoe'),
        body2: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'packages/fluent_design/Segoe'),
        display1: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 25,
            fontFamily: 'packages/fluent_design/Segoe'),
        display2: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: 20,
            fontFamily: 'packages/fluent_design/Segoe'),
        display3: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w200,
            fontSize: 30,
            fontFamily: 'packages/fluent_design/Segoe'),
        display4: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w100,
            fontSize: 45,
            fontFamily: 'packages/fluent_design/Segoe'),
        title: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w500),
        subtitle: TextStyle(
            color: Colors.black,
            fontSize: 15,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w400),
        headline: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: 28,
            fontFamily: 'packages/fluent_design/Segoe'),
      ),
      appBarTheme: AppBarTheme(
        elevation: 1,
        color: Colors.white,
        iconTheme: IconThemeData(color: Colors.black54, size: 24),
      ),
      chipTheme: ChipThemeData(
        backgroundColor: Colors.grey[400],
        brightness: Brightness.light,
        disabledColor: Colors.grey[200].withOpacity(0.9),
        labelPadding: EdgeInsets.only(left: 5,right: 5),
        labelStyle: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: 15,
            fontFamily: 'packages/fluent_design/Segoe'),
        padding: EdgeInsets.all(0),
        secondaryLabelStyle: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 10,
            fontFamily: 'packages/fluent_design/Segoe'),
        secondarySelectedColor: Colors.grey,
        selectedColor: accentColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(0),
          ),
        ),
      ),
    );
    return lightData;
  }

  /*

  Fluent Orange Theme

  */

  static ThemeData orangeTheme() {
    ThemeData orangeData = ThemeData(
      primaryIconTheme: IconThemeData(color: Colors.white, size: 20),
      disabledColor: Colors.black.withOpacity(0.5),
      iconTheme: IconThemeData(color: Colors.black, size: 20),
      bottomAppBarTheme: BottomAppBarTheme(color: Colors.white, elevation: 5),
      brightness: Brightness.light,
      primaryColor: Color(0xffda3b01),
      primaryColorDark: Color(0xffa52c00),
      accentColor: Color(0xffda3b01),
      textTheme: TextTheme(
        button: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w300),
        subhead: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w500),
        caption: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontFamily: 'packages/fluent_design/Segoe',
        ),
        body1: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'packages/fluent_design/Segoe'),
        body2: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'packages/fluent_design/Segoe'),
        display1: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 25,
            fontFamily: 'packages/fluent_design/Segoe'),
        display2: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: 20,
            fontFamily: 'packages/fluent_design/Segoe'),
        display3: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w200,
            fontSize: 30,
            fontFamily: 'packages/fluent_design/Segoe'),
        display4: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w100,
            fontSize: 45,
            fontFamily: 'packages/fluent_design/Segoe'),
        title: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w700),
        subtitle: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w400),
        headline: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 28,
            fontFamily: 'packages/fluent_design/Segoe'),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: Color(0xffd83b01),
        iconTheme: IconThemeData(color: Colors.white, size: 24),
      ),
    );

    return orangeData;
  }

  /*

  Fluent Purple Theme

  */

  static ThemeData purpleTheme() {
    ThemeData orangeData = ThemeData(
      primaryIconTheme: IconThemeData(color: Colors.white, size: 20),
      disabledColor: Colors.black.withOpacity(0.5),
      iconTheme: IconThemeData(color: Colors.black, size: 20),
      bottomAppBarTheme: BottomAppBarTheme(color: Colors.white, elevation: 5),
      brightness: Brightness.light,
      primaryColor: Color(0xff5c2e91),
      primaryColorDark: Color(0xff532982),
      accentColor: Color(0xff5c2e91),
      textTheme: TextTheme(
        button: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w300),
        subhead: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w500),
        caption: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontFamily: 'packages/fluent_design/Segoe',
        ),
        body1: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'packages/fluent_design/Segoe'),
        body2: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'packages/fluent_design/Segoe'),
        display1: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 25,
            fontFamily: 'packages/fluent_design/Segoe'),
        display2: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: 20,
            fontFamily: 'packages/fluent_design/Segoe'),
        display3: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w200,
            fontSize: 30,
            fontFamily: 'packages/fluent_design/Segoe'),
        display4: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w100,
            fontSize: 45,
            fontFamily: 'packages/fluent_design/Segoe'),
        title: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w700),
        subtitle: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w400),
        headline: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 28,
            fontFamily: 'packages/fluent_design/Segoe'),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: Color(0xff5c2e91),
        iconTheme: IconThemeData(color: Colors.white, size: 24),
      ),
    );

    return orangeData;
  }

  /*

  Fluent Pink Theme

  */

  static ThemeData pinkTheme() {
    ThemeData orangeData = ThemeData(
      primaryIconTheme: IconThemeData(color: Colors.white, size: 20),
      disabledColor: Colors.black.withOpacity(0.5),
      iconTheme: IconThemeData(color: Colors.black, size: 20),
      bottomAppBarTheme: BottomAppBarTheme(color: Colors.white, elevation: 5),
      brightness: Brightness.light,
      primaryColor: Color(0xffe3008c),
      primaryColorDark: Color(0xffcf0080),
      accentColor: Color(0xffe3008c),
      textTheme: TextTheme(
        button: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w300),
        subhead: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w500),
        caption: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontFamily: 'packages/fluent_design/Segoe',
        ),
        body1: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'packages/fluent_design/Segoe'),
        body2: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'packages/fluent_design/Segoe'),
        display1: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 25,
            fontFamily: 'packages/fluent_design/Segoe'),
        display2: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: 20,
            fontFamily: 'packages/fluent_design/Segoe'),
        display3: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w200,
            fontSize: 30,
            fontFamily: 'packages/fluent_design/Segoe'),
        display4: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w100,
            fontSize: 45,
            fontFamily: 'packages/fluent_design/Segoe'),
        title: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w700),
        subtitle: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w400),
        headline: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 28,
            fontFamily: 'packages/fluent_design/Segoe'),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: Color(0xffe3008c),
        iconTheme: IconThemeData(color: Colors.white, size: 24),
      ),
    );

    return orangeData;
  }

  /*

  Fluent green Theme

  */

  static ThemeData greenTheme() {
    ThemeData orangeData = ThemeData(
      primaryIconTheme: IconThemeData(color: Colors.white, size: 20),
      disabledColor: Colors.black.withOpacity(0.5),
      iconTheme: IconThemeData(color: Colors.black, size: 22),
      bottomAppBarTheme: BottomAppBarTheme(color: Colors.white, elevation: 5),
      brightness: Brightness.light,
      primaryColor: Color(0xff217346),
      primaryColorDark: Color(0xff0e5c2f),
      accentColor: Color(0xff217346),
      textTheme: TextTheme(
        button: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w300),
        subhead: TextStyle(
            color: Colors.black,
            fontSize: 16,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w500),
        caption: TextStyle(
          color: Colors.black,
          fontSize: 12,
          fontFamily: 'packages/fluent_design/Segoe',
        ),
        body1: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'packages/fluent_design/Segoe'),
        body2: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontFamily: 'packages/fluent_design/Segoe'),
        display1: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w400,
            fontSize: 25,
            fontFamily: 'packages/fluent_design/Segoe'),
        display2: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w300,
            fontSize: 20,
            fontFamily: 'packages/fluent_design/Segoe'),
        display3: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w200,
            fontSize: 30,
            fontFamily: 'packages/fluent_design/Segoe'),
        display4: TextStyle(
            color: Colors.black,
            fontWeight: FontWeight.w100,
            fontSize: 45,
            fontFamily: 'packages/fluent_design/Segoe'),
        title: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w700),
        subtitle: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w400),
        headline: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 28,
            fontFamily: 'packages/fluent_design/Segoe'),
      ),
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: Color(0xff217346),
        iconTheme: IconThemeData(color: Colors.white, size: 24),
      ),
    );

    return orangeData;
  }

  /*

  Fluent Dark Theme

  */

  static ThemeData darkTheme({@required Color accentColor}) {
    ThemeData darkData = ThemeData(
      primaryIconTheme: IconThemeData(color: Colors.white, size: 20),
      disabledColor: Colors.white.withOpacity(0.5),
      iconTheme: IconThemeData(color: Colors.white, size: 20),
      bottomAppBarTheme:
          BottomAppBarTheme(color: Color(0xff303030), elevation: 5),
      brightness: Brightness.light,
      primaryColor: Color(0xff303030),
      accentColor: accentColor,
      primaryColorDark: Colors.black,
      scaffoldBackgroundColor: Colors.black,
      appBarTheme: AppBarTheme(
        elevation: 0,
        color: Color(0xff303030),
        iconTheme: IconThemeData(color: Colors.white, size: 24),
      ),
      textTheme: TextTheme(
        button: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w300),
        subhead: TextStyle(
            color: Colors.white,
            fontSize: 16,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w500),
        caption: TextStyle(
          color: Colors.white,
          fontSize: 12,
          fontFamily: 'packages/fluent_design/Segoe',
        ),
        body1: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            fontFamily: 'packages/fluent_design/Segoe'),
        body2: TextStyle(
            color: Colors.white,
            fontSize: 14,
            fontFamily: 'packages/fluent_design/Segoe'),
        display1: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w400,
            fontSize: 25,
            fontFamily: 'packages/fluent_design/Segoe'),
        display2: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 20,
            fontFamily: 'packages/fluent_design/Segoe'),
        display3: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w200,
            fontSize: 30,
            fontFamily: 'packages/fluent_design/Segoe'),
        display4: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w100,
            fontSize: 45,
            fontFamily: 'packages/fluent_design/Segoe'),
        title: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w500),
        subtitle: TextStyle(
            color: Colors.white,
            fontSize: 15,
            fontFamily: 'packages/fluent_design/Segoe',
            fontWeight: FontWeight.w400),
        headline: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.w300,
            fontSize: 28,
            fontFamily: 'packages/fluent_design/Segoe'),
      ),
    );

    return darkData;
  }
}
