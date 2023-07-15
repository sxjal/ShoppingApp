import "package:flutter/material.dart";

class MiddleRow extends StatelessWidget {
  const MiddleRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      decoration: BoxDecoration(
        color: const Color.fromARGB(255, 84, 82, 82).withOpacity(0.4),
      ),
    );
  }
}
