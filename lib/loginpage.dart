import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:login_signup/logo.dart';
import 'Signuppage.dart';

class LoginPage extends StatelessWidget {
  TextEditingController myController =TextEditingController();
  TextEditingController myController2 =TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          backgroundColor:Color(0xFFFFFFFF),
          body:Center(
            child: Column(
              children: [
                SizedBox(height: 160,),
                applogo(),
                SizedBox(height: 38,),
                Text(
                  'Welcome Back!',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w700,
                    fontSize: 24 ,
                    color: Color(0xFF000000),
                   ),
                ),
                SizedBox(height: 10,),
                Text(
                  'Log in to existing LOGO account',
                  style: GoogleFonts.roboto(
                    fontWeight: FontWeight.w400,
                    fontSize: 14 ,
                    color: Color(0xFF515151),
                  ),
                ),
                SizedBox(height: 30,),
                Padding(
                  padding: const EdgeInsets.fromLTRB(36,10,36,20),
                  child: TextField(
                    controller: myController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      hintText: "Username",
                      prefixIcon: Icon(Icons.person_2_outlined),
                      filled: true,
                      fillColor: Color(0xFFF2F2F2),
                      contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),

                    ),

                  ),
                ),
                Padding(
            padding: const EdgeInsets.fromLTRB(36,10,36,20),
            child: TextField(
            controller: myController2,
            obscureText: true,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            decoration: InputDecoration(
            hintText: "Password",
            prefixIcon: Icon(Icons.lock_outline_sharp),
            filled: true,
            fillColor: Color(0xFFF2F2F2),
              contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),

            ),
            ),
            ),
                Row(
                  children: [
                    SizedBox(width: 260,),
                    Text('Forgot Password?',),
                  ],

             ) ,
                SizedBox(height: 20,),
                Container(
                  width:250,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Color(0xFF8EDDFF), Color(0xFF769DAD)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                    ),
                    borderRadius: BorderRadius.circular(0), // match button shape
                  ),
                  child: ElevatedButton(
                    onPressed: () {
                      print('Log in pressed');
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.transparent, // make button see-through
                      shadowColor: Colors.transparent,     // remove button shadow
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 14, horizontal: 32),
                    ),
                    child: Text(
                      'LOG IN',
                      style: GoogleFonts.roboto(
                        fontSize: 16,
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
                SizedBox(height: 30,),
                Text('Or sign up using'),
                SizedBox(height: 10,),
                SvgPicture.asset('assets/images/apps.svg'),
                SizedBox(height:40,),
                Row(
                  children: [
                    SizedBox(width: 100,),
                    Text("Don't have an account ?"),
                    GestureDetector(
                      onTap: (){
                        Navigator.push(context,
                           MaterialPageRoute(builder: (context)=>SignUp()));
                      },
                      child:Text('Sign Up',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                      ) ,
                    )

                  ],
                )






              ]
            ),

          ),
        ),
        Positioned(
          left: 34.68,
          top: -36.45,

          child: SvgPicture.asset('assets/images/Rectangledark.svg'),

        ),
        Positioned(
            left: -34.68,
            top: -36.45,

            child: SvgPicture.asset('assets/images/Rectanglebright.svg'),

        ),





      ],



    );
  }



}