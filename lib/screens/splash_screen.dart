import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_application_1/resuable_widgets/reusable_widget.dart';
import 'package:flutter_application_1/screens/singnin_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 1), () {
      Navigator.of(context).push(
        MaterialPageRoute(
          builder: (context) => const SingnInscreen(),
        ),
      );
    });

    _controller = AnimationController(vsync: this);
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
        decoration:
            const BoxDecoration(color: Color.fromARGB(255, 255, 227, 143)),
        child: Center(child: logoWidget("assets/oo.png")));
  }
}
