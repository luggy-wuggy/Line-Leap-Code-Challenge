import 'package:flutter/material.dart';

class EventCard {
  String image;
  String title;
  String bandName;
  String date;
  String location;

  EventCard({
    required this.image,
    required this.title,
    required this.bandName,
    required this.date,
    required this.location,
  });
}

List<EventCard> dummyCardList = [
  EventCard(
    image: 'assets/Event Image1@4x.png',
    title: 'Diplo Presents: Higher Ground',
    bandName: 'Diplo',
    date: 'Fri, August 26, 6:00 PM +2 more',
    location: 'Champs Downtown • State College, PA',
  ),
  EventCard(
    image: 'assets/Event Image2@4x.png',
    title: 'Trippie Redd - Neon Shark Live',
    bandName: 'Trippie Redd',
    date: 'Fri, August 26, 6:00 PM +2 more',
    location: "Rick's American • Ann Arbor, MI",
  ),
  EventCard(
    image: 'assets/Event Image3@4x.png',
    title: 'Kacey Musgraves - oh, what a word: tour II',
    bandName: 'Kacey Musgraves, Maggies Rogers, Yola',
    date: 'Fri, August 26, 6:00 PM +2 more',
    location: 'Bridgestone Arena • Nashville, TN',
  ),
  EventCard(
    image: 'assets/Event Image4@4x.png',
    title: 'Diplo Presents: Higher Ground',
    bandName: 'DOSK',
    date: 'Fri, August 26, 6:00 PM +2 more',
    location: 'Champs Downtown • State College, PA',
  ),
  EventCard(
    image: 'assets/Event Image5@4x.png',
    title: 'Diplo Presents: Higher Ground',
    bandName: 'Wale',
    date: 'Fri, August 26, 6:00 PM +2 more',
    location: 'Champs Downtown • State College, PA',
  ),
  EventCard(
    image: 'assets/Event Image6@4x.png',
    title: 'Back to School Bar Crawl',
    bandName: '',
    date: 'Fri, August 26, 6:00 PM +2 more',
    location: 'Champs Downtown • State College, PA',
  ),
];
