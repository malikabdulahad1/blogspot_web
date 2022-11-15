
import 'package:flutter/material.dart';

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    @required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}

GradientText silverGradient(String text, double fontsize) {
  return GradientText(
    text,
    style: TextStyle(
      fontSize: fontsize,
      fontFamily: "gotham",
    fontWeight: FontWeight.bold
    ),
    gradient:
        LinearGradient(begin: Alignment.bottomCenter, end: Alignment.topCenter,
            // tileMode: TileMode.clamp,
            colors: [
          Color(0xBD8E37).withOpacity(1),
          Color(0xFCD877).withOpacity(1),
          Color(0xFFFFD1).withOpacity(1),
          // Color.fromARGB(0, 248, 248, 133).withOpacity(1),
          Color(0xC1995C).withOpacity(1),
        ]),
  );
}

GradientText silverGradientLight(String text, double fontsize) {
  return GradientText(
    text,
    style: TextStyle(
      fontSize: fontsize,
      //fontFamily: gotham_light,
    ),
    gradient:
        LinearGradient(begin: Alignment.bottomCenter, end: Alignment.topCenter,
            // tileMode: TileMode.clamp,
            colors: [
          Color(0xBD8E37).withOpacity(1),
          Color(0xFCD877).withOpacity(1),
          Color(0xFFFFD1).withOpacity(1),
          // Color.fromARGB(0, 248, 248, 133).withOpacity(1),
          Color(0xC1995C).withOpacity(1),
        ]),
  );
}

GradientText whitegradient() {
  return GradientText(
    'TownApp',
    style: const TextStyle(
      fontSize: 40,
      fontFamily: "gotham",
    ),
    gradient:
        LinearGradient(begin: Alignment.topCenter, end: Alignment.bottomCenter,
            // tileMode: TileMode.clamp,
            colors: [
          Color(0xFFFFFF).withOpacity(1),
          Color(0xCECECE).withOpacity(1),
          Color(0xFFFFD1).withOpacity(1),
          Color(0xF7E1C0).withOpacity(1),
        ]),
  );
}