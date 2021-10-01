import 'package:flutter/material.dart';
import 'package:line_leap/global/colors.dart';
import 'package:line_leap/global/text_style.dart';
import 'package:line_leap/model/event_card.dart';

class EventCards extends StatelessWidget {
  const EventCards({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1120,
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
            width: 1120,
            height: 950,
            child: GridView.count(
              physics: const NeverScrollableScrollPhysics(),
              crossAxisCount: 3,
              childAspectRatio: 352 / 449,
              crossAxisSpacing: 32,
              mainAxisSpacing: 32,
              children: dummyCardList.map((EventCard eventCard) {
                return Container(
                  decoration: BoxDecoration(
                    color: eventCardColor,
                    borderRadius: const BorderRadius.all(Radius.circular(8)),
                  ),
                  margin: const EdgeInsets.all(1.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 352,
                        height: 198,
                        child: ClipRRect(
                          borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(8),
                            topRight: Radius.circular(8),
                          ),
                          child: Image.asset(
                            eventCard.image,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      const SizedBox(height: 24),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24),
                        child: Text(
                          eventCard.title,
                          style: cardTitleTextStyle,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: Text(
                          eventCard.bandName,
                          style: cardDescriptionTextStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: Text(
                          eventCard.date,
                          style: cardDescriptionTextStyle,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 24,
                        ),
                        child: Text(
                          eventCard.location,
                          style: cardDescriptionTextStyle,
                        ),
                      ),
                      const Spacer(),
                      Padding(
                        padding: const EdgeInsets.all(24),
                        child: Container(
                          height: 42,
                          width: 110,
                          decoration: BoxDecoration(
                            color: buttonColor,
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8)),
                          ),
                          child: Center(
                            child: Text('From \$99', style: buttonTextStyle),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
