import "package:flutter/material.dart";
import "package:google_fonts/google_fonts.dart";
import "package:shoppingapp/Widgets/bottom2.dart";
import "package:shoppingapp/Widgets/bottomitemcard.dart";
import "package:shoppingapp/constants/images.dart";
import "package:shoppingapp/data/data.dart";

class BottomCards extends StatelessWidget {
  const BottomCards({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 360,
          width: double.infinity,
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              colors: [
                Color.fromARGB(66, 77, 43, 26),
                Color.fromARGB(60, 167, 116, 90),
              ],
              begin: Alignment.centerLeft,
              end: Alignment.centerRight,
            ),
          ),
        ),
        Container(
          height: 360,
          width: double.infinity,
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(texturelogin),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.max,
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
              const Bottom2(),
            ],
          ),
        ),
      ],
    );
  }
}
