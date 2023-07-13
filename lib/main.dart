import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'Search_Bar.dart' as sb;
import 'slider.dart';
import 'LastSlide.dart';
import 'ProfileScreen.dart';


void main() {

  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
    statusBarColor: Color(0xFF083434), // status bar color
  ));

  runApp(const MyApp());

}


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(

        theme: ThemeData(fontFamily: 'Poppins'),
        home: SafeArea(
          child: Scaffold(
            
            resizeToAvoidBottomInset: false,
            backgroundColor: Color(0xFF083434),
            body: SingleChildScrollView(
              child: Padding(

                  padding: EdgeInsets.all(30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [

                      Profile(),

                      const SizedBox(
                        height: 20,
                      ),

                      sb.SearchBar(),

                      const SizedBox(
                        height: 30,
                      ),

                      const Text(
                        'Inspiration',
                        style: TextStyle(

                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(
                        height: 10,
                      ),

                      const Text(
                        'View the recent top performance',
                        style: TextStyle(

                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      const SizedBox(
                        height: 35,
                      ),

                      // Corosol...
                      Slider_C(),

                      const SizedBox(
                        height: 20,
                      ),

                      const Text(
                        'Attention!',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600,
                        ),
                      ),

                      const SizedBox(
                        height: 5,
                      ),

                      const Text(
                        'Pull over your shocks for upcoming competitions',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 12,
                          fontWeight: FontWeight.w400,
                        ),
                      ),

                      const SizedBox(
                        height: 15,
                      ),

                      LastSlide(),

                    ],
                  ),

              ),
            ),

          ),
        ));
  }
}


class Profile extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        const Text(
          'Hello Paras!',
          style: TextStyle(
            color: Color(0xFFE18104),
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),

        GestureDetector(

          onTap: () {

            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        ProfileScreen()));
          },

          child: Container(
            width: 67.17,
            height: 65,
            decoration: const ShapeDecoration(
              image: DecorationImage(
                image: AssetImage('images/FinalProfile.png'),
                fit: BoxFit.fill,
              ),
              shape: OvalBorder(
                side: BorderSide(width: 1, color: Color(0xFFFFFAFA)),
              ),
            ),
          ),
        )
      ],
    );
  }
}











