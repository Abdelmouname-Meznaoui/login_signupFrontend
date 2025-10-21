import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'logo.dart';
import 'loginpage.dart';
class SplashScreen extends StatefulWidget {
  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState (){
    super.initState();
    Future.delayed(Duration(seconds:4),(){
      Navigator.push(
          context,
      MaterialPageRoute(builder: (context)=> LoginPage() )
      );


    });



  }



  @override
  Widget build(BuildContext context) {
    return Stack(

      children: [
        Scaffold(
          backgroundColor: Color(0xFFFFFFFF),
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: 115),
                applogo(),
                SizedBox(height: 115),
               SvgPicture.asset(
                    "assets/images/auth.svg",
                    width: 320,
                    height: 320,),
                SizedBox(height: 30,),
                Text(
                  "LOREM IPSUM",
                  style:GoogleFonts.inter(
                    fontSize: 24 ,
                    fontWeight: FontWeight.bold ,
                  ),
                ),
                Text(
                  "Lorem Ipsum is a dummy text ",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text(
                      "used as placeholder",
                  textAlign: TextAlign.center,
                  style: GoogleFonts.inter(
                    fontSize: 20,
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
            top: 0,
            left:40,
            child: Column(
              children: [
                SvgPicture.asset("assets/images/Vector.svg"),
                SizedBox(height: 2,),
                SvgPicture.asset("assets/images/Group.svg"),
              ],
            )
        ),
        Positioned(
            left:90,
            bottom:580,
            child: Column(
              children: [
                SvgPicture.asset("assets/images/Vector.svg"),
                SizedBox(height: 2,),
                SvgPicture.asset("assets/images/Group.svg"),
              ],
            )
        ),
        Positioned(
            bottom:510,
            right:70,
            child: SvgPicture.asset("assets/images/dollar.svg"))



      ],
    );
  }
}
