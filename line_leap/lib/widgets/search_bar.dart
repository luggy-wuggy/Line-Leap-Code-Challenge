import 'package:flutter/material.dart';
import 'package:line_leap/global/colors.dart';
import 'package:line_leap/global/text_style.dart';

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 1120,
      height: 72,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 72,
            width: 716,
            padding: const EdgeInsets.only(left: 25),
            decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(8),
                bottomLeft: Radius.circular(8),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/search-dark@4x.png', height: 22),
                const SizedBox(
                  width: 30,
                ),
                SizedBox(
                  width: 400,
                  child: TextFormField(
                    decoration: const InputDecoration.collapsed(
                      hintText: 'Search Events, Venues, Artists or Passes',
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                  ),
                ),
                const Spacer(),
                Container(
                  height: 32,
                  width: 2,
                  color: Colors.grey[300],
                ),
              ],
            ),
          ),
          Container(
            height: 72,
            width: 256,
            color: Colors.white,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset('assets/map-pin@4x.png', height: 22),
                SizedBox(
                  width: 100,
                  child: TextFormField(
                    decoration: const InputDecoration.collapsed(
                      hintText: 'All Location',
                    ),
                    onSaved: (String? value) {
                      // This optional block of code can be used to run
                      // code when the user saves the form.
                    },
                  ),
                ),
                Image.asset('assets/chevron-down@4x.png', height: 22),
              ],
            ),
          ),
          Container(
            height: 72,
            width: 148,
            decoration: BoxDecoration(
              color: buttonColor,
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(8),
                bottomRight: Radius.circular(8),
              ),
            ),
            child: Center(
              child: Text(
                'Search',
                style: bannerTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
