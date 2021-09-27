import 'dart:ui';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:line_leap/global/colors.dart';
import 'package:line_leap/widgets/header_banner.dart';
import 'package:line_leap/widgets/search_bar.dart';

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

  List<String> widgetList = [
    'test',
    'test',
    'test',
    'test',
  ];

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
                Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    Image.asset('assets/banner.png'),
                    const SearchBar(),
                  ],
                ),
                const SizedBox(height: 80),
                Container(
                  width: 1120,
                  height: 1120,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Event Tickets',
                        style: subHeadlineTextStyle,
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      SizedBox(
                        height: 900,
                        width: 1120,
                        child: GridView.count(
                          crossAxisCount: 3,
                          childAspectRatio: 352 / 449,
                          crossAxisSpacing: 32,
                          mainAxisSpacing: 32,
                          children: widgetList.map((String value) {
                            return Container(
                              decoration: BoxDecoration(
                                color: eventCardColor,
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(8)),
                              ),
                              margin: const EdgeInsets.all(1.0),
                              child: Column(
                                children: [
                                  ClipRRect(
                                    borderRadius: const BorderRadius.only(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                    ),
                                    child: Image.asset(
                                      'assets/Event Image1@4x.png',
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                  const SizedBox(height: 24),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 24),
                                    child: Text(
                                      'Diplo Presents: Higher Ground',
                                      style: cardTitleTextStyle,
                                    ),
                                  ),
                                  const SizedBox(height: 8),
                                  Text(
                                    'Diplo',
                                    style: cardDescriptionTextStyle,
                                  ),
                                ],
                              ),
                            );
                          }).toList(),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 80,
                  height: 900,
                  color: Colors.green,
                )
              ],
            ),
          ),
          HeaderAppBar(_offsetAnimation)
        ],
      ),
    ));
  }
}
