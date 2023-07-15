import "package:flutter/material.dart";
import "package:shoppingapp/model/datamodel.dart";

class Itemcard extends StatelessWidget {
  const Itemcard({super.key, required this.item});

  final Data item;
  @override
  Widget build(context) {
    return Card(
      child: Container(
        height: 260,
        width: 210,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
      ),
    );
  }
}
