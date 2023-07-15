import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:shoppingapp/constants/images.dart';

class TopWidget extends StatelessWidget {
  const TopWidget({super.key});

  @override
  Widget build(context) {
    return Container(
      height: 200,
      width: double.infinity,
      child: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color.fromARGB(255, 84, 82, 82).withOpacity(0.4),
            ),
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Image.asset(
              texturelogin,
              fit: BoxFit.cover,
            ),
          ),
          ClipRect(
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
              child: Container(
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  border: Border.all(
                    width: 1.0,
                    color: Color.fromARGB(227, 111, 109, 109).withOpacity(0.2),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 200,
            width: double.infinity,
            child: Image.asset(
              texturelogin,
              fit: BoxFit.cover,
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const SizedBox(
                height: 60,
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    width: 20,
                  ),
                  const Icon(
                    Icons.handshake,
                    size: 28,
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "20/12/22",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              color: const Color.fromARGB(255, 100, 100, 100),
                            ),
                        textAlign: TextAlign.left,
                      ),
                      Text(
                        "Sajal Sahu",
                        style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                              color: const Color.fromARGB(255, 240, 237, 237),
                            ),
                        textAlign: TextAlign.left,
                      ),
                    ],
                  ),
                  const Spacer(),
                  IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.recycling_rounded,
                    ),
                  ),
                  const CircleAvatar(
                    radius: 25,
                    backgroundImage: NetworkImage(
                        "https://nitdelhi.ac.in/alumniportal/assets/team/SAJAL%20SAHU.jpeg"),
                  ),
                  const Spacer(),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
