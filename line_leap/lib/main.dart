import 'dart:ui';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:line_leap/global/colors.dart';

import 'global/text_style.dart';

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

  late final ScrollController _scrollController;

  late final Animation<Offset> _offsetAnimation = Tween<Offset>(
    begin: Offset.zero,
    end: const Offset(0.0, -2),
  ).animate(CurvedAnimation(
    parent: _controller,
    curve: Curves.easeInOutSine,
  ));

  @override
  void initState() {
    super.initState();
    _scrollController =
        ScrollController(initialScrollOffset: 0.0, keepScrollOffset: true);
  }

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
    _scrollController.dispose();
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
            controller: _scrollController,
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
          HeaderAppBar(_offsetAnimation)
          // _scrollController.hasClients && _scrollController.offset == 0.0
          //     ? HeaderAppBar(_offsetAnimation)
          //     : Container()
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
    return Container(
      height: 100,
      width: double.infinity,
      color: bannerColor,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/logo.png',
            scale: 0.7,
          ),
          Text(
            'Brand Ambassador',
            style: bannerTextStyle,
          ),
          Text(
            'Venue Owners',
            style: bannerTextStyle,
          ),
          Text(
            'Buy Passes',
            style: bannerTextStyle,
          ),
          Image.asset(
            'assets/search-light@4x.png',
            scale: 0.5,
          ),
          Container(
            height: 75,
            width: 160,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: const BorderRadius.all(Radius.circular(15),
            ),
            child: Center(
              child: Text(
                'Download the App',
                style: bannerTextStyle,
              ),
            ),
          ),
          Image.asset(
            'assets/My Account@4x.png',
          ),
          Text(
            'My Account',
            style: bannerTextStyle,
          ),
        ],
      ),
    );
  }
}
