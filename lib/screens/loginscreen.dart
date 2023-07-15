import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shoppingapp/constants/images.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(context) {
    return Scaffold(
      body: Center(
        child: Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(loginbg),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(74, 180, 107, 65),
                    Color.fromARGB(64, 180, 107, 65),
                    Color.fromARGB(38, 56, 87, 197),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 70),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                ),
                //child: ,
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 70),
              child: ClipRect(
                child: BackdropFilter(
                  filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                  child: Container(
                    width: double.infinity,
                    height: double.infinity,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.0),
                      border: Border.all(
                        width: 1.0,
                        color: const Color.fromARGB(228, 255, 255, 255)
                            .withOpacity(0.2),
                      ),
                      boxShadow: [
                        BoxShadow(
                          color:
                              Color.fromRGBO(73, 71, 71, 0.055).withOpacity(.2),
                          blurRadius: 10,
                          offset: Offset(0, -20), // Shadow position
                        ),
                      ],
                      gradient: const LinearGradient(
                        colors: [
                          Color.fromRGBO(225, 225, 225, 0.069),
                          Color.fromRGBO(225, 225, 225, 0.203),
                          Color.fromRGBO(225, 225, 225, 0.038),
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                    ),
                    child: const Center(
                        child: Text(
                      "Body",
                      style: TextStyle(fontSize: 30),
                    )),
                  ),
                ),
              ),
            ),
          ],
        ),
        /*
        Stack(
          children: [
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(loginbg),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Container(
              height: double.infinity,
              width: double.infinity,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    Color.fromARGB(134, 180, 107, 65),
                    Color.fromARGB(87, 180, 107, 65),
                    Color.fromARGB(79, 56, 87, 197),
                  ],
                  begin: Alignment.bottomCenter,
                  end: Alignment.topCenter,
                ),
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 40.0, vertical: 70),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(
                    Radius.circular(20.0),
                  ),
                  gradient: LinearGradient(
                    colors: [
                      Color.fromRGBO(225, 225, 225, 0.253),
                      Color.fromRGBO(225, 225, 225, 0.488),
                      Color.fromRGBO(225, 225, 225, 0.253),
                    ],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                  ),
                ),
                child: Container(
                  height: double.infinity,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(texturelogin),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 20,
                      vertical: 20,
                    ),
                    child: Column(
                      children: [
                        Text("sajal"),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
        */
      ),
    );
  }
}
