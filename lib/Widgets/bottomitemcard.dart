 
import 'package:flutter/material.dart';
 
import 'package:shoppingapp/constants/size.dart';
import 'package:shoppingapp/model/datamodel.dart';

class BottomItemcard extends StatelessWidget {
  const BottomItemcard({super.key, required this.item});

  final Data item;

  @override
  Widget build(BuildContext context) {
     SizeConfig().init(context);
    return Container(
      height: 20,
      child: Text(
        "${item.item} + 20",
      ),
    );
  }
}
