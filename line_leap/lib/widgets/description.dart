import 'package:flutter/material.dart';
import 'package:line_leap/global/text_style.dart';
import 'package:line_leap/model/description.dart';

class DescriptionWidget extends StatelessWidget {
  const DescriptionWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 1000,
      child: Row(
        children: [
          Expanded(
            child: Stack(
              children: [
                Image.asset('assets/Blob@4x.png'),
                Image.asset('assets/Phone@4x.png'),
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, top: 60),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    'Own Your Night',
                    style: subSubHeadlineTextStyle,
                  ),
                  const SizedBox(height: 10),
                  Text(
                    'Download the App',
                    style: headlineTextStyle,
                  ),
                  const SizedBox(height: 32),
                  Text(
                    'Skip the line, order drinks, purchase event tickets,\nand much more all your favorite bars!',
                    style: subContentTextStyle,
                  ),
                  const SizedBox(height: 64),
                  Container(
                    height: 400,
                    width: 560,
                    child: GridView.count(
                        crossAxisCount: 2,
                        physics: const NeverScrollableScrollPhysics(),
                        childAspectRatio: 310 / 130,
                        crossAxisSpacing: 32,
                        mainAxisSpacing: 32,
                        children:
                            dummyDescriptionList.map((Description description) {
                          return SizedBox(
                            width: 250,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(description.image, width: 35),
                                const SizedBox(width: 17),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(description.title,
                                        style: cardTitleTextStyle),
                                    const SizedBox(height: 8),
                                    Text(description.description,
                                        style: cardDescriptionTextStyle),
                                  ],
                                )
                              ],
                            ),
                          );
                        }).toList()),
                  ),
                  const SizedBox(height: 40),
                  Container(
                    height: 60,
                    width: 400,
                    child: Row(
                      children: [
                        Image.asset('assets/Google Play@4x.png'),
                        const SizedBox(width: 16),
                        Image.asset('assets/App Store@4x.png'),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
