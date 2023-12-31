import 'package:flutter/material.dart';
import 'package:shoppingapp/Widgets/bottomrow.dart';
import 'package:shoppingapp/Widgets/middlerow.dart';
import 'package:shoppingapp/Widgets/upperwidgetlogin.dart';
import 'package:shoppingapp/constants/images.dart';

class SecondScreen extends StatelessWidget {
  const SecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Opacity(
            opacity: 0.4,
            child: Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    loginbg,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(82, 180, 107, 65),
                  Color.fromARGB(64, 180, 107, 65),
                  Color.fromARGB(38, 56, 87, 197),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
            child: const Column(
              children: [
                TopWidget(),
                MiddleRow(),
                BottomRow(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
