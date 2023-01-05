import 'package:boqadding/widget/palette.dart';
import 'package:flutter/material.dart';

class RipleLoader extends StatelessWidget {
  final double size;
  RipleLoader({this.size: 40});
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: size + 10,
        height: size + 10,
        child: Center(
            child: CircularProgressIndicator(
          color: Palette.darkRed,
        )),
      ),
    );
  }
}
