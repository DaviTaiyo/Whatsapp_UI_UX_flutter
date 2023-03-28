import 'package:flutter/material.dart';
import 'package:whatsapp_clone/Pages/chatPage.dart';
import 'package:whatsapp_clone/Pages/settingPage.dart';

import 'Pages/HomePages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Whatsapp',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        appBarTheme: AppBarTheme(color: Color(0xFF075E55)),
        bottomSheetTheme:
            BottomSheetThemeData(backgroundColor: Colors.black.withOpacity(0)),
      ),
      routes: {
        "/": (context) => HomePage(),
        "settingPage": (context) => settingPage(),
        "chatPage": (context) => chatPage()
        },
    );
  }
}
