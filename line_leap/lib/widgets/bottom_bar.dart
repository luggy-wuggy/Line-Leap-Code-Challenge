import 'package:flutter/material.dart';
import 'package:line_leap/global/colors.dart';
import 'package:line_leap/global/text_style.dart';

class BottomBar extends StatelessWidget {
  const BottomBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 67,
      color: eventCardColor,
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Text(
                '© LineLeap 2020',
                style: cardDescriptionTextStyle,
              ),
            ),
            flex: 5,
          ),
          Expanded(
            child: Container(),
            flex: 3,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Text(
                'Privacy Policy',
                style: cardDescriptionTextStyle,
              ),
            ),
            flex: 3,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Text(
                'Terms & Conditions',
                style: cardDescriptionTextStyle,
              ),
            ),
            flex: 3,
          ),
        ],
      ),
    );
  }
}
