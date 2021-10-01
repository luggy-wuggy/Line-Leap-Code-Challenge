import 'dart:ui';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:line_leap/global/colors.dart';
import 'package:line_leap/widgets/bottom_bar.dart';
import 'package:line_leap/widgets/bottom_info.dart';
import 'package:line_leap/widgets/description.dart';
import 'package:line_leap/widgets/event_cards.dart';
import 'package:line_leap/widgets/header_banner.dart';
import 'package:line_leap/widgets/more_button.dart';
import 'package:line_leap/widgets/search_bar.dart';

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

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset('assets/banner.png'),
                    const SearchBar(),
                  ],
                ),
                const SizedBox(height: 80),
                const EventCards(),
                const SizedBox(height: 50),
                const MoreButton(),
                const SizedBox(height: 120),
                const DescriptionWidget(),
                const SizedBox(height: 160),
                const BottomInfo(),
                const BottomBar()
              ],
            ),
          ),
          const HeaderAppBar()
        ],
      ),
    ));
  }
}
