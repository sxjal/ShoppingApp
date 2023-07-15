import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";

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
          SingleChildScrollView(
            scrollDirection : Axis.horizontal,
            child: for(item in items)
            {

            }
          )
        ],
      ),
    );
  }
}