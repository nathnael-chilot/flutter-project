import 'package:flutter/material.dart';

class AccountTab3 extends StatelessWidget {
  const AccountTab3({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 40,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Container(
            color: Colors.green[300],
          ),
        );
      },
    );
  }
}
