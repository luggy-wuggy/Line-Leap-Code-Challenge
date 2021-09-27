import 'package:flutter/material.dart';
import 'package:line_leap/global/colors.dart';
import 'package:line_leap/global/text_style.dart';

class HeaderAppBar extends StatelessWidget {
  late Animation<Offset> offsetAnimation;

  HeaderAppBar(this.offsetAnimation, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 90,
      width: double.infinity,
      color: bannerColor,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 120),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo.png',
              width: 120,
            ),
            const SizedBox(
              width: 160,
            ),
            Text(
              'Brand Ambassador',
              style: bannerTextStyle,
            ),
            const SizedBox(
              width: 32,
            ),
            Text(
              'Venue Owners',
              style: bannerTextStyle,
            ),
            const SizedBox(
              width: 32,
            ),
            Text(
              'Buy Passes',
              style: bannerTextStyle,
            ),
            const SizedBox(
              width: 32,
            ),
            Image.asset(
              'assets/search-light@4x.png',
              width: 22,
            ),
            const SizedBox(
              width: 32,
            ),
            Container(
              height: 42,
              width: 174,
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: const BorderRadius.all(
                  Radius.circular(8),
                ),
              ),
              child: Center(
                child: Text(
                  'Download the App',
                  style: bannerTextStyle,
                ),
              ),
            ),
            const SizedBox(
              width: 32,
            ),
            Image.asset(
              'assets/My Account@4x.png',
              width: 24,
            ),
            const SizedBox(
              width: 32,
            ),
            Text(
              'My Account',
              style: bannerTextStyle,
            ),
          ],
        ),
      ),
    );
  }
}
