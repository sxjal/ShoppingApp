import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:glassmorphism/glassmorphism.dart';
import 'package:shoppingapp/model/datamodel.dart';

class Itemcard extends StatelessWidget {
  const Itemcard({super.key, required this.item});

  final Data item;

  @override
  Widget build(BuildContext context) {
    return GlassmorphicContainer(
      height: 260,
      width: 210,
      borderRadius: 10,
      blur: 15,
      alignment: Alignment.center,
      border: 2,
      borderGradient: LinearGradient(
        begin: Alignment.topLeft,
        end: Alignment.bottomRight,
        colors: [
          Colors.white.withOpacity(0.2),
          Colors.white38.withOpacity(0.2),
        ],
      ),
      linearGradient: LinearGradient(colors: [
        Colors.white.withOpacity(0.02),
        Colors.white38.withOpacity(0.02),
      ], begin: Alignment.topLeft, end: Alignment.bottomRight),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15.0),
        child: BackdropFilter(
          filter: ImageFilter.blur(
            sigmaX: 20.0,
            sigmaY: 20.0,
          ),
          child: Container(
            height: 200,
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.2),
              borderRadius: BorderRadius.circular(16.0),
              border: Border.all(
                width: 1.5,
                color: Colors.white.withOpacity(0.2),
              ),
            ),
            child: const Padding(
              padding: EdgeInsets.all(16.0),
              child: Column(
                children: [],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
