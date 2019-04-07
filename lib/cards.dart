import 'package:flutter/material.dart';
import 'color_generator.dart';

class Cards extends StatefulWidget {
  @override
  _CardsState createState() => _CardsState();
}

class _CardsState extends State<Cards> {
  Widget _buildBackgroundColor(){
    return new ColorGenerator(
      colors: [
        'assets/color1.png',
        'assets/color2.png',
        'assets/color3.png',
        'assets/color4.png',
        'assets/color5.png',
        'assets/color6.png',
        'assets/color7.png',
        'assets/color8.png',
        'assets/color9.png',
        'assets/color10.png',
      ],
      visibleColorIndex: 0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return new Container(
      decoration: new BoxDecoration(
        borderRadius: new BorderRadius.circular(20.0),
        boxShadow: [
          new BoxShadow(
            color: const Color(0x11000000),
            blurRadius: 5.0,
            spreadRadius: 7.0,
          ),
        ]
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(20.0),
        child: new Material(
          child: new Stack(
            fit: StackFit.expand,
            children: <Widget>[
              _buildBackgroundColor(),
            ],
          ),
        ),
      ),
    );
  }
}
