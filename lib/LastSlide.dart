import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LastSlide extends StatelessWidget {
  const LastSlide({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 314,
      height: 185,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 314,
              height: 185,
              decoration: ShapeDecoration(
                color: Color(0xFF08544C),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          Positioned(
            left: 10,
            top: 15,
            child: Container(
              width: 294,
              height: 118,
              decoration: ShapeDecoration(
                image: DecorationImage(
                  image: AssetImage('images/poetry.jpg'),
                  fit: BoxFit.fill,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),
          const Positioned(
            left: 10,
            top: 151,
            child: Text(
              'Poetry Out Loud',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Positioned(
            left: 226,
            top: 142,
            child: Text(
              'Start Date: June 23',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.white,
                fontSize: 8,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
          const Positioned(
            left: 226,
            top: 160,
            child: SizedBox(
              width: 75,
              child: Text(
                'End Date: June 24 ',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 8,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
