import 'dart:ui';

import 'package:flutter/material.dart';
final _borderRadius = BorderRadius.circular(20);

class GlassBox extends StatelessWidget {
  final height;
  final width;
  final child;
  
  

  const GlassBox({Key? key, this.height, this.width, this.child}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: _borderRadius,
      child: Container(
        width: width,
        height: height,
        child: Stack(
          children: [
            //blur effect
            BackdropFilter(
              filter: ImageFilter.blur(
                sigmaX: 5,
                sigmaY: 5,
              ),
              child: Container(),
            ),

            //gradient
            Container(
              decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.white.withOpacity(0.5),
                ),
                borderRadius: _borderRadius,
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  colors: [
                    Colors.white.withOpacity(0.4),
                    Colors.white.withOpacity(0.1)
                  ],
                ),
              ),
            ),
            //child
            child
          ],
        ),
      ),
    );
  }
}
