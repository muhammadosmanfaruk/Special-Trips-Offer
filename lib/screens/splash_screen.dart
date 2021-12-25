
import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_animations/screens/home.dart';
import 'package:google_fonts/google_fonts.dart';


class SplashScreen extends StatelessWidget {
  const SplashScreen({key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Timer(Duration(seconds: 3), ()=>Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>Home())));
    return Scaffold(
      body: Container(
          child: Center(
            child: AnimatedContainer(
              duration: Duration(seconds: 5000),
              child: Column(
                children: [
                  Image.asset("images/welcome.png",
                    height: 300,
                    width: 400,),
                  SizedBox(height: 8,),
                  Container(
                    alignment: Alignment.center,
                    child: Text("Welcome to Special Trips Offer",style: GoogleFonts.oswald(color: Colors.redAccent,fontSize: 30,fontWeight: FontWeight.bold,),),
                  ),
                ],
              ),
            ),
          )
      ),
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Made By",style: GoogleFonts.oswald(color: Colors.black,fontSize: 20,),),
          Icon(Icons.favorite,color: Colors.red,),
          Text("OsmanGaohar",style: GoogleFonts.oswald(color: Colors.black,fontSize: 20,fontWeight: FontWeight.bold,)
          ),
        ],
      ),
    );
  }
}
