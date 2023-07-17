import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:glassmorphism/glassmorphism.dart';
import 'package:shoppingapp/constants/images.dart';
import 'package:shoppingapp/model/datamodel.dart';

class BottomItemcard extends StatelessWidget {
  const BottomItemcard({super.key, required this.item});

  final Data item;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 20,
      child: Text(
        "${item.item} + 20",
      ),
    );
  }
}
