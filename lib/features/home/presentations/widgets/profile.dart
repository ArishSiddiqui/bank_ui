import 'package:flutter/material.dart';

class ProfileAvatar extends StatelessWidget {
  const ProfileAvatar({super.key, required this.imgUrl, required this.text});
  final String imgUrl;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        CircleAvatar(
          backgroundImage: NetworkImage(imgUrl),
        ),
        Text(text),
      ]),
    );
  }
}
