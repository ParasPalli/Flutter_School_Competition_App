import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'FuncionBox.dart';



class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(fontFamily: 'Poppins'),
        home: SafeArea(
          child: Scaffold(

            backgroundColor: Color(0xFF083434),
            body: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Profile(),

                  const SizedBox(height: 25,),

                  const Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),

                  const SizedBox(height: 15,),

                  ProfileDetails(),

                  SizedBox(height: 15,),

                  const Divider(
                    thickness: 1,
                    color: Colors.white,
                  ),

                  SizedBox(height: 25,),

                  ActionButtons(),

                  SizedBox(height: 40,),

                  FunctionBox(),

                ],
              ),
            ),

            bottomNavigationBar: Test(),

          ),
        ));
  }

}


class Test extends StatefulWidget {
  const Test({super.key});

  @override
  State<Test> createState() => _TestState();
}

class _TestState extends State<Test> {
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(

      backgroundColor: Color(0xFF083434),
      fixedColor: Colors.white,
      unselectedItemColor: Colors.white,
      selectedFontSize: 12,

      items: [

        BottomNavigationBarItem(

          icon: ClipRRect(
            child: Container(

              height: 30,
              width: 30,
              child: Image.asset('images/home_icon.png'),

            ),
          ),
          label: 'HOME',

        ),

        BottomNavigationBarItem(

          icon: ClipRRect(
            child: Container(

              height: 30,
              width: 30,
              child: Image.asset('images/book_icon.png'),

            ),
          ),
          label: 'LEARN',

        ),


        BottomNavigationBarItem(

          icon: ClipRRect(
            child: Container(
              height: 30,
              width: 30,
              child: Image.asset('images/trophy_icon.png'),
            ),
          ),

          label: 'COMPETITIONS',

        ),


      ],

      onTap: (index){
        setState(() {

          String btn = "Competitions";

          if(index == 0){

            btn = "Home";

          }else if(index == 1){

            btn = "Learn";

          }

          ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('$btn is Clicked 😊 '),
                backgroundColor: Color(0xFF0A6057),
              ),
          );
        });
      },

    );
  }
}


class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [

        GestureDetector(

          onTap: (){
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Profile is Clicked 😊'),
                backgroundColor: Color(0xFF0A6057),
              ),
            );
          },

          child: Container(
            width: 67.17,
            height: 65,
            decoration: ShapeDecoration(
              image: DecorationImage(
                image: AssetImage('images/FinalProfile.png'),
                fit: BoxFit.fill,
              ),
              shape: OvalBorder(
                side: BorderSide(width: 1, color: Color(0xFFFFFAFA)),
              ),
            ),
          ),
        ),

        SizedBox(
          width: 27,
        ),

        const Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Paras Palli',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w600,
              ),
            ),
            Text(
              'Red House',
              style: TextStyle(
                color: Colors.white,
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ],
    );
  }
}


class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [

        Text(
          'Aadhar Number:',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),

        SizedBox(height: 10,),

        Text(
          'xxx xxx xxx xxx xxx xxx',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),

        SizedBox(height: 15,),

        Text(
          'Phone Number:',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),

        SizedBox(height: 10,),

        Text(
          'xxx xxx xxx xxx xxx xxx',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),

        SizedBox(height: 15,),

        Text(
          'School Name:',
          style: TextStyle(
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),

        SizedBox(height: 10,),

        Text(
          'ABC School',
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w400,
          ),
        ),

      ],

    );
  }
}


class ActionButtons extends StatelessWidget {
  const ActionButtons({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(

      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [

        GestureDetector(

          onTap: (){
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Notification Button is Clicked 😊'),
                backgroundColor: Color(0xFF0A6057),
              ),
            );
          },

          child: SizedBox(

            height: 90,
            width: 90,
            child: Card(

              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
              color: Color(0xFF095F56),

              child: Padding(
                padding: const EdgeInsets.all(11),
                child: Column(

                  children: [

                    Expanded(child: Image.asset('images/notification_icon.png')),

                    SizedBox(height: 5,),

                    const Text(
                      'Notification',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 8,
                        fontWeight: FontWeight.w400,
                      ),
                    )

                  ],
                ),
              )

            ),
          ),
        ),

        GestureDetector(

          onTap: (){
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('LeaderBoard Button is Clicked 😊'),
                backgroundColor: Color(0xFF0A6057),
              ),
            );
          },

          child: SizedBox(

            height: 90,
            width: 90,
            child: Card(

                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                color: Color(0xFF095F56),
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Column(

                    children: [

                      Expanded(child: Image.asset('images/leaderboard_icon.png')),

                      SizedBox(height: 5,),

                      const Text(
                        'Leaderboard',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
                        ),
                      )

                    ],
                  ),
                )

            ),
          ),
        ),

        GestureDetector(

          onTap: (){
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                content: Text('Settings Button is Clicked 😊'),
                backgroundColor: Color(0xFF0A6057),
              ),
            );
          },

          child: SizedBox(

            height: 90,
            width: 90,
            child: Card(

                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                color: Color(0xFF095F56),
                child: Padding(
                  padding: const EdgeInsets.all(11),
                  child: Column(

                    children: [

                      Expanded(child: Image.asset('images/settings_icon.png')),

                      SizedBox(height: 5,),

                      const Text(
                        'Settings',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 8,
                          fontWeight: FontWeight.w400,
                        ),
                      )

                    ],
                  ),
                )

            ),
          ),
        ),

      ],

    );
  }
}
