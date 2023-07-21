import 'package:flutter/material.dart';

class CCImage extends StatelessWidget {
  const CCImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
      child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: Image.asset(
            'assets/6276.jpg',
            fit: BoxFit.contain,
          )),
    );
  }
}
