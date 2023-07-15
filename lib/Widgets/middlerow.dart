import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import 'package:shoppingapp/Widgets/middleitemcard.dart';
import "package:shoppingapp/data/data.dart";

class MiddleRow extends StatelessWidget {
  const MiddleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 350,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 42, 41, 41).withOpacity(0.6),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 18, 180, 8),
            child: Text(
              "Most Popular Bevarages",
              style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                    color: const Color.fromARGB(255, 194, 194, 194),
                    fontSize: 18,
                    fontFamily: GoogleFonts.inter().fontFamily,
                  ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: [
                const SizedBox(
                  width: 10,
                ),
                for (final item in items)
                  Padding(
                      padding: const EdgeInsets.only(
                        left: 5,
                        right: 5,
                      ),
                      child: Itemcard(item: item)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
