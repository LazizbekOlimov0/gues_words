import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../service/app_controller.dart';
import 'home_page.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    initialize();
  }

  void initialize() async {
    final controller = AppController();
    final items = await controller.readData();
    if (mounted) {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(
          builder: (_) => HomePage(items: items),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(
        child: Lottie.asset('assets/animation/splash_pages.json'),
      ),
    );
  }
}
