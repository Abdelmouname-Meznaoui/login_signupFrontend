import 'package:flutter/cupertino.dart';


class applogo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: [
          Color(0xFF91DDFF),
          Color(0xFF5E7F8C),
        ],
        begin: Alignment.topCenter,
        end: Alignment.bottomCenter,
      ).createShader(
        Rect.fromLTWH(0, 0, bounds.height, bounds.height),
      ),
      blendMode: BlendMode.srcIn,
      child: Text(
        "LOGO",
        style: TextStyle(
          fontSize: 80,
          fontWeight: FontWeight.w400,
          fontFamily: 'Prime',
          letterSpacing: 4,
        ),
      ),
    );
  }



}