import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({super.key, required this.onPressed});
  final void Function()? onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 60,
      width: 320,
      child: ElevatedButton(
        onPressed: onPressed,
        child: Text(
          " Get Started ",
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        style: ElevatedButton.styleFrom(
            shape: const StadiumBorder(), backgroundColor: Colors.blue),
      ),
    );
  }
}
