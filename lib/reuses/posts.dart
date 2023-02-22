import 'package:flutter/material.dart';
import 'package:like_button/like_button.dart';

class UserPosts extends StatelessWidget {
  const UserPosts({super.key, required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // profile picture
              Row(
                children: [
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.grey[300], shape: BoxShape.circle),
                    child: const CircleAvatar(
                      radius: 50,
                      backgroundImage: AssetImage('assets/rihanna.jpeg'),
                    ),
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    name,
                    style: const TextStyle(fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const Icon(Icons.more_vert),
            ],
          ),
        ),
        Container(
          height: 300,
          color: Colors.grey[300],
          // to do
          child: Image.asset(
            'assets/teddy.jpeg',
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: const [
                  // Icon(Icons.favorite),
                  LikeButton(),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 12.0),
                    child: Icon(
                      Icons.chat_bubble_outline,
                    ),
                  ),
                  Icon(Icons.share),
                ],
              ),
              // const Icon(Icons.bookmark),
              LikeButton(
                likeBuilder: (isTapped) {
                  return Icon(
                    Icons.bookmark,
                    color: isTapped ? Colors.grey : Colors.black,
                  );
                },
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Row(
            children: const [
              Text('Liked by '),
              Text(
                'nathnael ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text('and '),
              Text(
                'Others ',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 8.0),
          child: RichText(
            text: const TextSpan(
              style: TextStyle(color: Colors.black),
              children: [
                TextSpan(
                  text: 'nathnael ',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                TextSpan(
                    text:
                        'enjoy the summer i hope it is going to be amazing for you all guys'),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
