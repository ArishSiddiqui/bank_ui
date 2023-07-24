import 'package:flutter/material.dart';

class CCImage extends StatelessWidget {
  const CCImage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 200,
      width: 350,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25),
        image: const DecorationImage(
            image: NetworkImage(
                'https://freepngimg.com/thumb/credit_card/25598-5-credit-card-image.png')),
        // color: Colors.amber,
      ),
      // child: ClipRRect(
      //   borderRadius: BorderRadius.circular(8),
      //   child: Image.asset(
      //     'assets/6276.jpg',
      //     fit: BoxFit.fill,
      //   ),
      // ),
    );
  }
}
