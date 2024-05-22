import 'package:flutter/material.dart';

class BubbleWidget extends StatelessWidget {
  final String information;
  final Widget child;
  final Color color;
  final double borderRadius;
  final double horizontalMargin;
  final double height;

  BubbleWidget({
    this.information = '',
    required this.child,
    this.color = Colors.blue,
    this.borderRadius = 8.0,
    this.horizontalMargin = 2.0,
    this.height = 101.0, // Optional: If provided, sets the fixed height of the container
  });

  @override
  Widget build(BuildContext context) {
    final screenWidth = MediaQuery.of(context).size.width;
    final containerWidth = (screenWidth/2) - (horizontalMargin * 2);

    return Align(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: horizontalMargin),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        height: height, // Set the height if provided
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                information,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 16.0,
                ),
              ),
            ),
            Container(
              width: containerWidth,
              padding: EdgeInsets.all(16.0),
              child: child,
            ),
          ],
        ),
      ),
    );
  }
}