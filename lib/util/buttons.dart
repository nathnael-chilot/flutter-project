import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  const MyButton({super.key, this.icon, required this.number});

  final icon;
  final String number;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(15.0),
      child: Column(
        children: [
          Icon(
            icon,
            size: 40,
            color: Colors.white,
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            number,
            style: const TextStyle(color: Colors.white),
          )
        ],
      ),
    );
  }
}
