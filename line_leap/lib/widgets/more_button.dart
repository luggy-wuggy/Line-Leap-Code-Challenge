import 'package:flutter/material.dart';
import 'package:line_leap/global/colors.dart';
import 'package:line_leap/global/text_style.dart';

class MoreButton extends StatelessWidget {
  const MoreButton({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80,
      width: 585,
      decoration: BoxDecoration(
        color: secondaryButtonColor,
        borderRadius: const BorderRadius.all(Radius.circular(8)),
      ),
      child: Center(
        child: Text(
          'See 6 More',
          style: cardTitleTextStyle,
        ),
      ),
    );
  }
}
