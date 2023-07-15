import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:shoppingapp/Widgets/bottomitemcard.dart";
import "package:shoppingapp/data/data.dart";

class BottomCards extends StatelessWidget {
  const BottomCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 42, 41, 41).withOpacity(0.6),
      ),
      child: ListView(
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
            child: Column(
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
                      child: BottomItemcard(item: item)),
              ],
            ),
          )
        ],
      ),
    );
  }
}
