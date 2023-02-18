

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_foodapp/views/splashPage.dart';

import 'common/constants.dart';
import 'route/app_route.dart';
// set of style

void main() => runApp(
     MyApp(),
);

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          fontFamily: 'Kantumruy Pro',
          primaryColor: primaryColor,
         secondaryHeaderColor: neutral1Color,
          colorScheme: const ColorScheme.light(
            primary: primaryColor,
            secondary: secondaryColor,
            tertiary: tertiaryColor
          ),
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: AppBarTheme(
            iconTheme: IconThemeData(color: Colors.pinkAccent),
            color: Colors.transparent,
            elevation: 0,
            titleTextStyle: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
          ),
        iconTheme: IconThemeData(color: neutral5Color),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            elevation: 0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(36),
              ),
            textStyle: TextStyle(
              color: Colors.white,
              fontSize: 16,
            ),
            // padding: EdgeInsets.symmetric(
            //   vertical: 15,
            //   horizontal: 50,
            // ),
          ),
        ),
      ),
      initialRoute: SplashPage.routeName,
      onGenerateRoute: OnGenerrateRoute,
    );
  }
}


