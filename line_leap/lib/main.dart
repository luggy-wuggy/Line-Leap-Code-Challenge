import 'dart:ui';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:line_leap/global/colors.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(),
      home: const HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
    duration: const Duration(seconds: 2),
    vsync: this,
  )..repeat(reverse: true);
  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0.0, -2),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOutSine,
  ));

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      width: double.infinity,
      color: backgroundColor,
      child: Stack(
        children: [
          SingleChildScrollView(
            child: Column(
              children: [
                Image.asset('assets/banner.png'),
                Container(
                  width: 80,
                  height: 900,
                  color: Colors.green,
                )
              ],
            ),
          ),
          HeaderAppBar(_offsetAnimation),
        ],
      ),
    ));
  }
}

class HeaderAppBar extends StatelessWidget {
  late Animation<Offset> offsetAnimation;

  HeaderAppBar(this.offsetAnimation, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: offsetAnimation,
      child: Container(
        height: 100,
        width: double.infinity,
        color: bannerColor,
        child: const Center(
          child: Text(
            'LineLeap',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}
