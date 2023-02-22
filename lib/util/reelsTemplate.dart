import 'package:flutter/material.dart';

import 'buttons.dart';

class ReelsTemplate extends StatelessWidget {
  const ReelsTemplate(
      {super.key,
      required this.userName,
      required this.videoDescription,
      required this.numberOfLikes,
      required this.numberOfComments,
      required this.numberOfShares,
      this.userPost});

  final String userName;
  final String videoDescription;
  final String numberOfLikes;
  final String numberOfComments;
  final String numberOfShares;
  final userPost;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          userPost,
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: const Alignment(-1, 1),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    '@$userName',
                    style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(text: videoDescription),
                        const TextSpan(
                          text: '#alnasser #cr7',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              alignment: const Alignment(1, 1),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  MyButton(icon: Icons.favorite, number: numberOfLikes),
                  MyButton(
                      icon: Icons.chat_bubble_outlined,
                      number: numberOfComments),
                  MyButton(icon: Icons.send, number: numberOfShares),
                  const Icon(Icons.more_vert),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
