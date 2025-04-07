import 'package:flutter/material.dart';
import 'package:gues_words/page/splash_page.dart';


class PictureCharadeApp extends StatelessWidget {
  const PictureCharadeApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}
