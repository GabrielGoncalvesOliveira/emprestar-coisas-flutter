import 'package:flutter/material.dart';

class CenteredCircularProggres extends StatelessWidget {
  final String message;
  final double loadingSize;
  final double fontSize;

  CenteredCircularProggres({
    this.message,
    this.fontSize,
    this.loadingSize,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Container(
            height: loadingSize,
            width: loadingSize,
            child: CircularProgressIndicator(),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 24.0),
            child: Text(
              message,
              style: TextStyle(fontSize: fontSize, fontWeight: FontWeight.w300),
            ),
          )
        ],
      ),
    );
  }
}