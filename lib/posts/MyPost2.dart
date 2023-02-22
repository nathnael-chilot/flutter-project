import 'package:flutter/material.dart';
import 'package:instagramui/util/reelsTemplate.dart';

class MyPost2 extends StatelessWidget {
  const MyPost2({super.key});

  @override
  Widget build(BuildContext context) {
    return ReelsTemplate(
      userName: 'teddyafro',
      videoDescription: 'AddisAbaba',
      numberOfLikes: '1.3M',
      numberOfComments: '1K',
      numberOfShares: '999',
      userPost: Expanded(
        child: Container(
          height: 700,
          child: Image.asset(
            'assets/teddy2.jpeg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
