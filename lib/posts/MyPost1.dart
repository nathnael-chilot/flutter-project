import 'package:flutter/material.dart';
import 'package:instagramui/util/reelsTemplate.dart';

class MyPost1 extends StatelessWidget {
  const MyPost1({super.key});

  @override
  Widget build(BuildContext context) {
    return ReelsTemplate(
      userName: 'cristiano7',
      videoDescription: 'ryadh',
      numberOfLikes: '22.3M',
      numberOfComments: '1.2M',
      numberOfShares: '1.9K',
      userPost: Expanded(
        child: Container(
          height: 700,
          child: Image.asset(
            'assets/cr7.jpeg',
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
