import 'package:flutter/material.dart';
import 'package:website_generator_app/screens/splash_screen/splash_screen.dart';

void main() {
  runApp(const WebsiteGenerator());
}

class WebsiteGenerator extends StatelessWidget {
  const WebsiteGenerator({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Website Generator App',
      home: SplashScreen(),
    );
  }
}
