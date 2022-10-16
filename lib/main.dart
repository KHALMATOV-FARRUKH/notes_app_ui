import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:notes_app_ui/app_colors.dart';
import 'package:notes_app_ui/views/landing_view.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
          appBarTheme: const AppBarTheme(
              actionsIconTheme: IconThemeData(color: AppColors.lightTextColor),
              centerTitle: false,
              backgroundColor: Colors.transparent,
              shadowColor: Colors.transparent),
          floatingActionButtonTheme: const FloatingActionButtonThemeData(
              backgroundColor: AppColors.buttonColor),
          textButtonTheme: TextButtonThemeData(
              style: TextButton.styleFrom(primary: AppColors.lightTextColor)),
          tabBarTheme: const TabBarTheme(
              indicator: UnderlineTabIndicator(
                  borderSide: BorderSide(width: 3, color: AppColors.orange)),
              indicatorSize: TabBarIndicatorSize.label,
              labelColor: AppColors.orange),
          fontFamily: GoogleFonts.poppins().fontFamily,
          backgroundColor: AppColors.containerBackground,
          scaffoldBackgroundColor: AppColors.scaffoldBackground,
          brightness: Brightness.dark,
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              minimumSize: const Size(100, 50),
              primary: AppColors.buttonColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30),
              ),
            ),
          )),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const LandingView(),
    );
  }
}
