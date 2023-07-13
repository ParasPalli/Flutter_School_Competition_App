import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FunctionBox extends StatelessWidget {
  const FunctionBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(

      height: 179,
      width: double.infinity,
      decoration: ShapeDecoration(
        color: Color(0xFF0A6057),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        ),
      ),
      padding: EdgeInsets.all(11),
      child: Column(

        mainAxisAlignment: MainAxisAlignment.center,
        children: [

          SubFunctionBox('home_icon', 'Contribution'),

          SizedBox(height: 10,),

          const Divider(
            thickness: 1,
            color: Colors.white,
          ),

          SizedBox(height: 5,),

          SubFunctionBox('wallet_icon', 'View Plans'),

          SizedBox(height: 5,),

          const Divider(
            thickness: 1,
            color: Colors.white,
          ),

          SizedBox(height: 5,),

          SubFunctionBox('share_icon', 'Share'),

        ],
      ),

    );
  }
}

class SubFunctionBox extends StatelessWidget {

  final String icon_name;
  final String txt;

  SubFunctionBox(this.icon_name, this.txt);

  var SettingsRow = Row(
    mainAxisAlignment: MainAxisAlignment.end,
    crossAxisAlignment: CrossAxisAlignment.center,
    mainAxisSize: MainAxisSize.max,
    children: <Widget>[

      Container(
        height: 15,
        width: 15,
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('images/arrow_icon.png'),
            fit: BoxFit.fill,
          ),
        ),
      ),

      SizedBox(width: 15,),

    ],
  );


  @override
  Widget build(BuildContext context) {
    return GestureDetector(

      onTap: (){

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Button is Clicked 😊 '),
            backgroundColor: Color(0xFF0A6057),
          ),
        );

      },

      child: Row(

        crossAxisAlignment: CrossAxisAlignment.center,
        // mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [

          const SizedBox(width: 25,),

          Container(
            height: 30,
            width: 30,
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('images/$icon_name.png'),
                fit: BoxFit.fill,
              ),
            ),
          ),

          const SizedBox(width: 37,),

          Text(
            txt,
            style: const TextStyle(
              color: Colors.white,
              fontSize: 15,
              fontWeight: FontWeight.w400,
            ),
          ),

          Expanded(child: SettingsRow),

        ],

      ),

    );
  }
}