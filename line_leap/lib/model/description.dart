class Description {
  String image;
  String title;
  String description;

  Description({
    required this.image,
    required this.title,
    required this.description,
  });
}

List<Description> dummyDescriptionList = [
  Description(
    image: 'assets/LineSkip@4x.png',
    title: 'LineLeap',
    description:
        'LineSkip passes let you skip\nlong lines at your favorite\nbars, venues, and events.',
  ),
  Description(
    image: 'assets/Cover@4x.png',
    title: 'Cover',
    description:
        'Ditch the ATM! Pay with\nVenmo, PayPal, or credit card\nusing the LineLeap App.',
  ),
  Description(
    image: 'assets/Drinks@4x.png',
    title: 'Drinks',
    description:
        'Order your drinks right from\nyour phone. No more splitting\ntabs or soggy receipts! ',
  ),
  Description(
    image: 'assets/Events@4x.png',
    title: 'Events',
    description:
        'Get tickets and VIP access\nto dope concerts you won’t\nfind anywhere else. ',
  ),
  Description(
    image: 'assets/Frame 35@4x.png',
    title: 'Exclusive Deals',
    description: 'Use LineLeap for exclusive\ndeals on your favorite drinks!',
  ),
  Description(
    image: 'assets/Reservations@4x.png',
    title: 'Reservations',
    description:
        'Save your spot in line or grab\nthe perfect table in seconds.',
  ),
];
