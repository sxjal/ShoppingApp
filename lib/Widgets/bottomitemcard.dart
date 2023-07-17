import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:glassmorphism/glassmorphism.dart';
import 'package:shoppingapp/constants/images.dart';
import 'package:shoppingapp/model/datamodel.dart';
import 'package:shoppingapp/screens/itemscreen.dart';

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
            borderRadius: 20,
            blur: 10,
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
            borderRadius: BorderRadius.circular(20),
            image: const DecorationImage(
              image: AssetImage(texturelogin),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.only(
              left: 20.0,
              right: 10.0,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          item.item,
                          style: Theme.of(context)
                              .textTheme
                              .bodyMedium!
                              .copyWith(
                                color: const Color.fromARGB(255, 239, 234, 234),
                                fontSize: 18,
                                fontWeight: FontWeight.w700,
                                fontFamily: "Inter",
                              ),
                        ),
                        const SizedBox(
                          height: 5,
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
                            Container(
                              height: 30,
                              width: 30,
                              decoration: const BoxDecoration(
                                image: DecorationImage(
                                  image: AssetImage(veg),
                                ),
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        Container(
                          width: 220,
                          child: Text(
                            item.description,
                            maxLines: 5,
                            //softWrap: true,
                            overflow: TextOverflow.ellipsis,
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      color: Color.fromARGB(255, 253, 250, 250),
                                      fontSize: 10,
                                      fontWeight: FontWeight.w500,
                                      fontFamily: "Inter",
                                    ),
                          ),
                        ),
                      ],
                    ),
                    const Spacer(),
                    Stack(
                      children: [
                        Container(
                          height: 130,
                          width: 130,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            // color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              image: AssetImage(
                                item.image,
                              ),
                              fit: BoxFit.cover,
                            ),
                          ),
                          height: 120,
                          width: 130,
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Positioned(
                          bottom: 0,
                          left: 35,
                          child: Center(
                            child: Container(
                              height: 30,
                              width: 50,
                              decoration: const BoxDecoration(
                                color: Color.fromARGB(255, 102, 163, 92),
                                borderRadius: BorderRadius.all(
                                  Radius.circular(5),
                                ),
                              ),
                              child: Center(
                                child: TextButton(
                                  //padding: EdgeInsets.zero,
                                  onPressed: () {
                                    Navigator.of(context).push(
                                      MaterialPageRoute(
                                        builder: (context) =>
                                            ItemScreen(item: item),
                                      ),
                                    );
                                  },
                                  child: const Text(
                                    "Add",
                                    style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 12,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
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
