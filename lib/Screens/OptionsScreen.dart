import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:travelastic/Screens/InfoScreen.dart';
import 'package:travelastic/utils/ColorChange.dart';

class Optionsscreen extends StatelessWidget {
  const Optionsscreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
        padding: const EdgeInsets.only(left: 100, top: 57),
    child: Column(
    children: [
    // Add padding to the logo image
    Container(
    width: 102,
    height: 47,
    child: Image.asset("assets/images/logo.png"),
    ),
      SizedBox(height: 30),

      Column(
        children: [
          InkWell(
            onTap: (){
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => Infoscreen()),
              );

            },
            child: Container(
              child: Center(
                child: Text(
                  "Worker"
                      ,
                  style: TextStyle(
                    fontSize: 25,

                    fontWeight: FontWeight.bold
                  ),
                ),
              ),
              height:50 ,
              width:212 ,
              decoration: BoxDecoration(
                color: colorChanger("#10FEFE"),
                borderRadius: BorderRadius.circular(20.0),

              ),

            ),
          ),
          SizedBox(height: 30),
          Container(
            child: Center(
              child: Text(
                "Business"
                ,
                style: TextStyle(
                    fontSize: 25,

                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            height:50 ,
            width:212 ,
            decoration: BoxDecoration(
              color: colorChanger("#10FEFE"),
              borderRadius: BorderRadius.circular(20.0),

            ),

          ),
          SizedBox(height: 30),
          Container(
            child: Center(
              child: Text(
                "Both"
                ,
                style: TextStyle(
                    fontSize: 25,

                    fontWeight: FontWeight.bold
                ),
              ),
            ),
            height:50 ,
            width:212 ,
            decoration: BoxDecoration(
              color: colorChanger("#10FEFE"),
              borderRadius: BorderRadius.circular(20.0),

            ),

          ),

        ],
      )



    ]
    )
    )
    );


  }
}
