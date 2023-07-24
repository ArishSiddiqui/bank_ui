import 'package:flutter/material.dart';

class ProfileContainer extends StatelessWidget {
  const ProfileContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 2,
      itemBuilder: (context, index) => Container(
        height: 40,
        width: 200,
        decoration: BoxDecoration(
          color: Colors.grey.shade300,
          borderRadius: BorderRadius.circular(12),
        ),
        child: Container(
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Colors.grey.shade300),
          child: Column(
            children: [
              const Text(
                'Akhil Gadwal',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                'Flutter Dev',
                style: TextStyle(color: Colors.grey.shade300),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
