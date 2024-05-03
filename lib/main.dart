import 'package:flutter/material.dart';
import 'package:finances_control/pages/intro_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {=
    final ThemeData appTheme = ThemeData(
      primaryColor: Color.fromRGBO(44,144,245,1),
      scaffoldBackgroundColor: Color.fromRGBO(11, 18, 21, 1),
      textTheme: GoogleFonts.kanitTextTheme(
        Theme.of(context).textTheme
      ),
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: Color.fromRGBO(44,144,245,1),
        onPrimary: Colors.white,
        secondary: Color.fromRGBO(11, 18, 21, 1),
        onSecondary: Colors.white,
        error: Colors.red,
        onError: Colors.white,
        surface: Color.fromRGBO(11, 18, 21, 1),
        onSurface: Colors.white,
      ),
    );

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Financial Control',
      theme: appTheme,
      home: IntroPage(),
    );
  }
}
