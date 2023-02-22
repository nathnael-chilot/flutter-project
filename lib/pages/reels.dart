import 'package:flutter/material.dart';

import '../posts/MyPost1.dart';
import '../posts/MyPost2.dart';
import '../posts/MyPost3.dart';

class UserReels extends StatelessWidget {
  // const UserReels({super.key, required});

  final _controller = PageController(initialPage: 0);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: PageView(
      controller: _controller,
      scrollDirection: Axis.vertical,
      children: const [
        MyPost1(),
        MyPost2(),
        MyPost3(),
      ],
    ));
  }
}
