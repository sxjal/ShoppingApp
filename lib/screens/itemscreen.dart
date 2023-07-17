import "package:flutter/material.dart";
import "package:shoppingapp/model/datamodel.dart";

class ItemScreen extends StatelessWidget {
  const ItemScreen({super.key, required this.item});
  final Data item;

  @override
  Widget build(context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          // Container(
          //   height: 400,
          //   //padding: EdgeInsets.all(0),
          //   width: double.infinity,
          //   decoration: BoxDecoration(
          //     //image: DecorationImage(
          //     color: Colors.black,
          //   ),
          //   child: FittedBox(
          //     child: Image(
          //       image: AssetImage(item.image),
          //       fit: BoxFit.fill,
          //     ),
          //   ),
          // ),
          Image(
            height: 400,
            width: double.infinity,
            image: AssetImage(item.image),
            fit: BoxFit.fill,
          ),
          //alignment: Alignment.center,

          Expanded(
            child: Container(
              //  height: 500,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black38,
                // borderRadius: BorderRadius.only(
                // topLeft: Radius.circular(40),
                //topRight: Radius.circular(40),
                //),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
