import 'package:flutter/material.dart';

class BubbleWidget extends StatelessWidget {
  final Widget child;
  final Color color;
  final double borderRadius;
  final double horizontalMargin;
  final double height;
  final double width;

  BubbleWidget({
    required this.child,
    this.color = Colors.white,
    this.borderRadius = 8.0,
    this.horizontalMargin = 2.0,
    this.height = 150.0, // Optional: If provided, sets the fixed height of the container
    this.width = 150,
  });

  @override
  Widget build(BuildContext context) {

    return Align(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        width: width,
        height: height, // Set the height if provided
        child: child,
      ),
    );
  }
}
