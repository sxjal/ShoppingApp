import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:glassmorphism/glassmorphism.dart';
import 'package:shoppingapp/constants/images.dart';
import 'package:shoppingapp/model/datamodel.dart';

class BottomItemcard extends StatelessWidget {
  const BottomItemcard({super.key, required this.item});

  final Data item;

  @override
  Widget build(BuildContext context) {
    var _height = 170.0;
    var _width = double.infinity;
    return Stack(
      children: [
        Opacity(
          opacity: 0.5,
          child: GlassmorphicContainer(
            height: _height,
            width: _width,
            borderRadius: 10,
            blur: 15,
            alignment: Alignment.center,
            border: 2,
            borderGradient: const LinearGradient(
              colors: [
                Colors.white,
              ],
            ),
            linearGradient: const LinearGradient(colors: [
              Color.fromARGB(124, 255, 255, 255),
              Color.fromARGB(135, 255, 255, 255),
              Color.fromARGB(198, 255, 255, 255),
            ], begin: Alignment.topLeft, end: Alignment.bottomRight),
          ),
        ),
        Container(
          height: _height,
          width: _width,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.white,
              width: 0.4,
            ),
            borderRadius: BorderRadius.circular(10),
            image: const DecorationImage(
              image: AssetImage(texturelogin),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Center(
                  child: Image.asset(
                    item.image,
                    height: 150,
                    width: 150,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  item.item,
                  style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                        color: const Color.fromARGB(255, 239, 234, 234),
                        fontSize: 18,
                        fontWeight: FontWeight.w700,
                        fontFamily: "Inter",
                      ),
                ),
                Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 10,
                        ),
                        Text(
                          "Espresso, Steamed Milk",
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                color: const Color.fromARGB(255, 43, 43, 43),
                                fontSize: 10,
                                fontWeight: FontWeight.w400,
                                fontFamily: "Inter",
                              ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Text(
                              "4.9",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color:
                                        const Color.fromARGB(255, 43, 43, 43),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Inter",
                                  ),
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            const Icon(
                              Icons.star,
                              color: Colors.amber,
                            ),
                            const SizedBox(
                              width: 5,
                            ),
                            Text(
                              "(458)",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    color:
                                        const Color.fromARGB(255, 43, 43, 43),
                                    fontSize: 12,
                                    fontWeight: FontWeight.w500,
                                    fontFamily: "Inter",
                                  ),
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Center(
                      child: Container(
                        height: 40,
                        width: 40,
                        decoration: const BoxDecoration(
                          color: Color.fromARGB(255, 102, 163, 92),
                          borderRadius: BorderRadius.all(
                            Radius.circular(5),
                          ),
                        ),
                        child: Center(
                          child: IconButton(
                            padding: EdgeInsets.zero,
                            onPressed: () {},
                            icon: const Icon(
                              Icons.add,
                            ),
                            alignment: Alignment.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
