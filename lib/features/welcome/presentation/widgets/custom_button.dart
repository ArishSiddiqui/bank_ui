import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 350,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          " Get Started ",
          style: TextStyle(fontSize: 20),
        ),
        style: ElevatedButton.styleFrom(
          shape: const StadiumBorder(),
        ),
      ),
    );
  }
}
