import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fsearch/fsearch.dart';



class SearchBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FSearch(
      height: 45,
      width: double.infinity,
      backgroundColor: const Color(0xFF002220),
      corner: FSearchCorner.all(10),

      strokeColor: Colors.white,
      strokeWidth: 2,

      prefixes: [
        SizedBox(width: 10.0),
        Container(
          height: 35,
          width: 40,
          child: Image.asset('images/search_icon.png'),
        ),
        SizedBox(width: 15.0)
      ],

      style: const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.w300,
        color: Colors.white,
      ),

      hints: const [
        "Search Competition",
        "Search Competition"
      ],

      onSearch: (value) {
        // print(value.length);
      },

    );
  }
}
