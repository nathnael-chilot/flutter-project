import 'package:flutter/material.dart';

class ReUse extends StatelessWidget {
  const ReUse({super.key, required this.text});
  final String text;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          Container(
            height: 60,
            width: 60,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: Colors.grey[400],
            ),
            child: const CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('assets/rophnan.jpeg'),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(text),
        ],
      ),
    );
  }
}
