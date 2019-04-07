import 'package:flutter/material.dart';

class ColorGenerator extends StatefulWidget {
  final List<String> colors;
  final int visibleColorIndex;

  ColorGenerator({
    this.colors,
    this.visibleColorIndex,
  });

  _ColorGeneratorState createState() => _ColorGeneratorState();
}

class _ColorGeneratorState extends State<ColorGenerator> {
  int visiblePhotoIndex;

  void initState() {
    super.initState();
    visiblePhotoIndex = widget.visibleColorIndex;
  }

  void _prevImage() {
    setState(() {
      visiblePhotoIndex = visiblePhotoIndex > 0 ? visiblePhotoIndex - 1 : 0;
    });
  }

  void _nextImage() {
    setState(() {
      visiblePhotoIndex = visiblePhotoIndex < widget.colors.length - 1
          ? visiblePhotoIndex + 1
          : visiblePhotoIndex;
    });
  }

  Widget _buildControls() {
    return new Stack(
      fit: StackFit.expand,
      children: <Widget>[
        new GestureDetector(
          onTap: _prevImage,
          child: new FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 1.0,
            alignment: Alignment.topLeft,
            child: new Container(
              color: Colors.transparent,
            ),
          ),
        ),
        new GestureDetector(
          onTap: _nextImage,
          child: new FractionallySizedBox(
            widthFactor: 0.5,
            heightFactor: 1.0,
            alignment: Alignment.topRight,
            child: new Container(
              color: Colors.transparent,
            ),
          ),
        ),
      ],
    );
  }

  Widget build(BuildContext context) {
    return new Stack(
      children: <Widget>[
        new Image.asset(
          widget.colors[visiblePhotoIndex],
          fit: BoxFit.contain,
        ),
        _buildControls(),
      ],
    );
  }
}