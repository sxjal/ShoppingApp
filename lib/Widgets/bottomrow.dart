import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:shoppingapp/Widgets/bottomitemcard.dart";
import "package:shoppingapp/data/data.dart";

class BottomCards extends StatelessWidget {
  const BottomCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 42, 41, 41).withOpacity(0.6),
      ),
<<<<<<< HEAD
      child: ListView(
=======
      child: Column(
>>>>>>> main
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 18, 180, 8),
            child: Text(
              "Get it Instantly",
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
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                const SizedBox(
                  width: 10,
                ),
                for (final item in items)
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 5,
                      right: 5,
                      top: 5,
                      bottom: 5,
                    ),
                    child: BottomItemcard(
                      item: item,
                    ),
                  ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
