import 'package:flutter/material.dart';
import 'package:instagramui/util/reelsTemplate.dart';

class MyPost3 extends StatelessWidget {
  const MyPost3({super.key});

  @override
  Widget build(BuildContext context) {
    return ReelsTemplate(
      userName: 'rophnan',
      videoDescription: 'arbaminch',
      numberOfLikes: '16.5K',
      numberOfComments: '1K',
      numberOfShares: '357K',
      userPost: Expanded(
        child: Container(
          height: 700,
          child: Image.asset(
            'assets/rophnan.jpeg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
