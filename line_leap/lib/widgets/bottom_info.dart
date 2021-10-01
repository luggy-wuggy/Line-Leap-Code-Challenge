import 'package:flutter/material.dart';
import 'package:line_leap/global/colors.dart';
import 'package:line_leap/global/text_style.dart';

class BottomInfo extends StatelessWidget {
  const BottomInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 250,
      child: Row(
        children: [
          Expanded(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Image.asset('assets/logo.png', width: 150),
                  const SizedBox(height: 16),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset('assets/instagram (1)@4x.png', height: 25),
                      const SizedBox(width: 27),
                      Image.asset('assets/facebook@4x.png', height: 29),
                      const SizedBox(width: 27),
                      Image.asset('assets/twitter (1)@4x.png', height: 25),
                      const SizedBox(width: 27),
                      Image.asset('assets/tiktok@4x.png', height: 25),
                    ],
                  ),
                  const SizedBox(height: 16),
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
                ],
              ),
            ),
            flex: 5,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Company',
                    style: cardTitleTextStyle,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Contact Us',
                    style: cardDescriptionTextStyle,
                  ),
                  const SizedBox(height: 16),
                  Text('Brand Ambassador', style: cardDescriptionTextStyle),
                  const SizedBox(height: 16),
                  Text(
                    'About Us',
                    style: cardDescriptionTextStyle,
                  ),
                  const Spacer(),
                ],
              ),
            ),
            flex: 3,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Customers',
                    style: cardTitleTextStyle,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Buy Event Tickets',
                    style: cardDescriptionTextStyle,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Buy Gift Cards',
                    style: cardDescriptionTextStyle,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Refunds',
                    style: cardDescriptionTextStyle,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Merch',
                    style: cardDescriptionTextStyle,
                  ),
                  const Spacer(),
                ],
              ),
            ),
            flex: 3,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Venue Owners',
                    style: cardTitleTextStyle,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Learn More',
                    style: cardDescriptionTextStyle,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Platforms',
                    style: cardDescriptionTextStyle,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Pricing',
                    style: cardDescriptionTextStyle,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Schedule Demo',
                    style: cardDescriptionTextStyle,
                  ),
                  const SizedBox(height: 16),
                  Text(
                    'Dashboard Login',
                    style: cardDescriptionTextStyle,
                  ),
                  const Spacer(),
                ],
              ),
            ),
            flex: 3,
          ),
        ],
      ),
    );
  }
}
