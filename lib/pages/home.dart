import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:instagramui/reuses/posts.dart';

class UserHome extends StatelessWidget {
  final List people = [
    'teddyAfro',
    'cristiano',
    'rophnan',
    'rihanna',
    'nathnael'
  ];

  List<String> ProfileImages = [
    "assets/teddy.jpeg",
    "assets/cr7.jpeg",
    "assets/rophnan.jpeg",
    "assets/rihanna.jpeg",
    "assets/teddy2.jpeg",
    "assets/rophnan2.jpeg",
    "assets/cr2.jpeg",
    "assets/0.jpeg",
    "assets/5.jpeg",
    "assets/18.jpeg",
  ];

  void signUserOut() {
    FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text(
              'Instagram',
              style: TextStyle(
                  color: Colors.black, fontFamily: 'Billabong', fontSize: 30),
            ),
            Row(
              children: [
                const Icon(
                  Icons.add,
                  color: Colors.black,
                ),
                const Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Icon(
                    Icons.favorite,
                    color: Colors.black,
                  ),
                ),
                const Icon(
                  Icons.share,
                  color: Colors.black,
                ),
                IconButton(
                  onPressed: signUserOut,
                  icon: const Icon(
                    Icons.logout,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
      body: Column(
        children: [
          //stories
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: List.generate(
                10,
                (index) => Container(
                  padding: const EdgeInsets.all(10),
                  child: CircleAvatar(
                    radius: 35,
                    backgroundImage: const AssetImage(
                      "assets/story.jpeg",
                    ),
                    child: CircleAvatar(
                      radius: 32,
                      backgroundImage: AssetImage(
                        ProfileImages[index],
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
          //posts
          Expanded(
            child: ListView.builder(
                itemCount: people.length,
                itemBuilder: ((context, index) {
                  return UserPosts(name: people[index]);
                })),
          ),
        ],
      ),
    );
  }
}
