import "package:flutter/material.dart";
import "package:shoppingapp/Widgets/bottomitemcard.dart";
import "package:shoppingapp/data/data.dart";

class Bottom2 extends StatelessWidget {
  const Bottom2({super.key});

  @override
  Widget build(context) {
    return Column(
      children: [
        const SizedBox(
          height: 5,
        ),
        Text(items[0].item),
        //for (final item in items) BottomItemcard(item: item),
      ],
      //   ),
    );
  }
}
