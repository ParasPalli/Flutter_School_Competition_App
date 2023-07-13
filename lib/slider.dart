import 'package:carousel_slider/carousel_options.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';



class Slider_C extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 250,
      child: ListView(

        children: [
          CarouselSlider(
            items: [

              CaresolContainer('Kid1'),
              CaresolContainer('Kid2'),
              CaresolContainer('kid3'),
              CaresolContainer('kid4'),
              CaresolContainer('kid5'),

            ],

            //Slider Container properties
            options: CarouselOptions(
              height: 250,
              enlargeCenterPage: true,
              autoPlay: true,
              aspectRatio: 16 / 9,
              autoPlayCurve: Curves.fastOutSlowIn,
              enableInfiniteScroll: true,
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              viewportFraction: 0.8,
            ),

          ),
        ],
      ),
    );

  }
}



class CaresolContainer extends StatelessWidget {

  final String image_name;

  CaresolContainer(this.image_name);


  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Positioned(
          child: Container(
            width: 250, //300
            height: 250, //350
            decoration: ShapeDecoration(
              color: Color(0xFF08544C),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
          ),
        ),

        Positioned(
          left: 203,
          top: 202,
          child: Container(
            width: 21,
            height: 19,
            decoration: const BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/heart_icon.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),
        ),

        Positioned(
          left: 19,
          top: 13,
          child: Container(
            width: 33,
            height: 34,
            decoration: const ShapeDecoration(
              image: DecorationImage(
                image: AssetImage('images/FinalProfile.png'),
                fit: BoxFit.fill,
              ),
              shape: OvalBorder(),
            ),
          ),
        ),

        const Positioned(
          left: 191,
          top: 223,
          child: SizedBox(
            width: 44,
            height: 12,
            child: Text(
              '23 Upvotes',
              style: TextStyle(
                color: Colors.white,
                fontSize: 8,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),

        const Positioned(
          left: 19,
          top: 223,
          child: SizedBox(
            width: 108,
            height: 12,
            child: Text(
              'School - Mountain High',
              style: TextStyle(
                color: Colors.white,
                fontSize: 8,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),

        const Positioned(
          left: 19,
          top: 212,
          child: SizedBox(
            width: 108,
            height: 12,
            child: Text(
              'House - Pegasus',
              style: TextStyle(
                color: Colors.white,
                fontSize: 8,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ),

        const Positioned(
          left: 19,
          top: 149,
          child: SizedBox(
            width: 214,
            height: 48,
            child: Text(
              'Witness the Unforgettable: Behold the mesmerizing dance moves that stole the spotlight in our recent Dance..................',
              textAlign: TextAlign.justify,
              style: TextStyle(
                color: Colors.white,
                fontSize: 10,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),

        Positioned(
          left: 17,
          top: 58,
          child: Container(
            width: 216,
            height: 86,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage('images/$image_name.jpg'),
                fit: BoxFit.fill,
              ),
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
            ),
          ),
        ),

        const Positioned(
          left: 58,
          top: 21,
          child: Text(
            'Ariya Pratap, 9',
            style: TextStyle(
              color: Colors.white,
              fontSize: 12,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w600,
            ),
          ),
        ),

      ],
    );
  }
}





// class CaresolContainer extends StatelessWidget {
//
//   @override
//   Widget build(BuildContext context) {
//     return Stack(
//       children: [
//
//         Positioned(
//           child: Container(
//             width: 250, //300
//             height: 250, //350
//             decoration: ShapeDecoration(
//               color: Color(0xFF08544C),
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(20),
//               ),
//             ),
//           ),
//         ),
//
//         Positioned(
//           left: 277,
//           top: 324,
//           child: Container(
//             width: 29.40,
//             height: 30.40,
//             decoration: BoxDecoration(
//               image: DecorationImage(
//                 image: NetworkImage("https://via.placeholder.com/29x30"),
//                 fit: BoxFit.fill,
//               ),
//             ),
//           ),
//         ),
//         Positioned(
//           left: 27,
//           top: 21,
//           child: Container(
//             width: 54,
//             height: 50,
//             decoration: ShapeDecoration(
//               image: DecorationImage(
//                 image: NetworkImage("https://via.placeholder.com/54x50"),
//                 fit: BoxFit.fill,
//               ),
//               shape: OvalBorder(),
//             ),
//           ),
//         ),
//         Positioned(
//           left: 259,
//           top: 357,
//           child: SizedBox(
//             width: 70,
//             height: 19,
//             child: Text(
//               '23 Upvotes',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 12,
//                 fontFamily: 'Poppins',
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//         ),
//         Positioned(
//           left: 27,
//           top: 357,
//           child: SizedBox(
//             width: 151.20,
//             height: 19.20,
//             child: Text(
//               'School - Mountain High',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 12,
//                 fontFamily: 'Poppins',
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ),
//         ),
//         Positioned(
//           left: 27,
//           top: 333,
//           child: SizedBox(
//             width: 151.20,
//             height: 19.20,
//             child: Text(
//               'House - Pegasus',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 12,
//                 fontFamily: 'Poppins',
//                 fontWeight: FontWeight.w500,
//               ),
//             ),
//           ),
//         ),
//         Positioned(
//           left: 26.60,
//           top: 238.40,
//           child: SizedBox(
//             width: 299.60,
//             height: 76.80,
//             child: Text(
//               'Witness the Unforgettable: Behold the mesmerizing dance moves that stole the spotlight in our recent Dance.',
//               textAlign: TextAlign.justify,
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 15,
//                 fontFamily: 'Poppins',
//                 fontWeight: FontWeight.w400,
//               ),
//             ),
//           ),
//         ),
//         Positioned(
//           left: 24,
//           top: 88,
//           child: Container(
//             width: 302,
//             height: 142,
//             decoration: ShapeDecoration(
//               image: DecorationImage(
//                 image: NetworkImage("https://via.placeholder.com/302x142"),
//                 fit: BoxFit.fill,
//               ),
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
//             ),
//           ),
//         ),
//         Positioned(
//           left: 92,
//           top: 32,
//           child: SizedBox(
//             width: 149,
//             height: 29,
//             child: Text(
//               'Ariya Pratap, 9',
//               style: TextStyle(
//                 color: Colors.white,
//                 fontSize: 18,
//                 fontFamily: 'Poppins',
//                 fontWeight: FontWeight.w600,
//               ),
//             ),
//           ),
//         ),
//       ],
//     );
//   }
// }
