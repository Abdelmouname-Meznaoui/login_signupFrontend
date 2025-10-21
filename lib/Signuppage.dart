import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'loginpage.dart';

class SignUp extends StatelessWidget {
  TextEditingController Firstname = TextEditingController();
  TextEditingController Lastname = TextEditingController();
  TextEditingController Username = TextEditingController();
  TextEditingController Email = TextEditingController();
  TextEditingController Password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();

  @override
  Widget build(BuildContext context) {
   return Scaffold(
     backgroundColor: Colors.white,
     body: Center(
       child: Column(
         children: [
           SizedBox(height: 100,),
           Text(
             "Let's get started!",
             style: GoogleFonts.roboto(
               fontWeight: FontWeight.w700,
               fontSize: 24 ,
               color: Color(0xFF000000),
             ),
           ),
           Text(
             "create an account on MNZL to get all features",
             style: GoogleFonts.roboto(
               fontWeight: FontWeight.w400,
               fontSize: 16,
             ),
           ),
           SizedBox(height:30,),

           Padding(
             padding: const EdgeInsets.fromLTRB(36,10,36,20),
             child: TextField(
               controller: Firstname,
               keyboardType: TextInputType.text,
               textInputAction: TextInputAction.next,
               decoration: InputDecoration(
                 hintText: "First Name",
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
               controller: Lastname,
               keyboardType: TextInputType.text,
               textInputAction: TextInputAction.next,
               decoration: InputDecoration(
                 hintText: "Last Name",
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
               controller: Username,
               keyboardType: TextInputType.text,
               textInputAction: TextInputAction.next,
               decoration: InputDecoration(
                 hintText: "User Name",
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
               controller: Email,
               keyboardType: TextInputType.emailAddress,
               textInputAction: TextInputAction.next,
               decoration: InputDecoration(
                 hintText: "Email",
                 prefixIcon: Icon(Icons.email_outlined),
                 filled: true,
                 fillColor: Color(0xFFF2F2F2),
                 contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),

               ),
             ),
           ),
           Padding(
             padding: const EdgeInsets.fromLTRB(36,10,36,20),
             child: TextField(
               obscureText:true,
               controller: Password,
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
           Padding(
             padding: const EdgeInsets.fromLTRB(36,10,36,20),
             child: TextField(
               controller: confirmPassword,
               keyboardType: TextInputType.text,
               textInputAction: TextInputAction.next,
               decoration: InputDecoration(
                 hintText: "Confirm Password",
                 prefixIcon: Icon(Icons.lock_outline_sharp),
                 filled: true,
                 fillColor: Color(0xFFF2F2F2),
                 contentPadding: EdgeInsets.symmetric(vertical: 16, horizontal: 20),

               ),
             ),
           ),
           Container(
             width:200,
             decoration: BoxDecoration(
               gradient: LinearGradient(
                 colors: [Color(0xFF8EDDFF), Color(0xFF769DAD)],
                 begin: Alignment.topCenter,
                 end: Alignment.bottomCenter,
               ),
               borderRadius: BorderRadius.circular(8), // match button shape
             ),
             child: ElevatedButton(
               onPressed: () {
                 print('create pressed');
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
                 'CREATE',
                 style: GoogleFonts.roboto(
                   fontSize: 16,
                   fontWeight: FontWeight.w700,
                   color: Colors.white,
                 ),
               ),
             ),
           ),
           SizedBox(height:40,),
           Row(
             children: [
               SizedBox(width: 100,),
               Text("Already have an account? "),
               GestureDetector(
                 onTap: (){
                   Navigator.push(context,
                       MaterialPageRoute(builder: (context)=>LoginPage()));
                 },
                 child:Text('Log in',
                   style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 16,
                   ),
                 ) ,
               )

             ],
           )



         ],
       ),
     ),



   );
  }




}