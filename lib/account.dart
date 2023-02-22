import 'package:flutter/material.dart';
import 'package:instagramui/reuses/account_tab1.dart';
import 'package:instagramui/reuses/account_tab2.dart';
import 'package:instagramui/reuses/account_tab3.dart';
import 'package:instagramui/reuses/account_tab4.dart';
import 'package:instagramui/reuses/reuse.dart';

class UserAccount extends StatelessWidget {
  const UserAccount({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20.0, top: 30.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const CircleAvatar(
                    radius: 50,
                    backgroundImage: AssetImage('assets/cr7.jpeg'),
                  ),
                  Expanded(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Column(
                          children: const [
                            Text(
                              '99',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text('posts'),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '999',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text('Followers'),
                          ],
                        ),
                        Column(
                          children: const [
                            Text(
                              '9',
                              style: TextStyle(
                                  fontSize: 20, fontWeight: FontWeight.bold),
                            ),
                            Text('Following'),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'nathnael',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 2.0),
                    child: Text('Software Engineer'),
                  ),
                  Text(
                    'chilotnathnael@gmil.com',
                    style: TextStyle(color: Colors.blue),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(5.0),
                        // ignore: sort_child_properties_last
                        child: const Center(
                          child: Text('Edit Profile'),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(5.0),
                        // ignore: sort_child_properties_last
                        child: const Center(
                          child: Text('Ad Tools'),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(2.0),
                      child: Container(
                        padding: const EdgeInsets.all(5.0),
                        // ignore: sort_child_properties_last
                        child: const Center(
                          child: Text('Insights'),
                        ),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.grey),
                          borderRadius: BorderRadius.circular(5.0),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Row(
                children: const [
                  ReUse(text: 'blen'),
                  ReUse(text: 'kassmasse'),
                  ReUse(text: 'girum'),
                  ReUse(text: 'amanuael'),
                ],
              ),
            ),
            // ignore: prefer_const_constructors
            TabBar(
              tabs: const [
                Tab(
                  icon: Icon(
                    Icons.grid_3x3_outlined,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.video_call,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.shop,
                    color: Colors.black,
                  ),
                ),
                Tab(
                  icon: Icon(
                    Icons.person,
                    color: Colors.black,
                  ),
                ),
              ],
            ),
            const Expanded(
              child: TabBarView(
                children: [
                  AccountTab1(),
                  AccountTab2(),
                  AccountTab3(),
                  AccountTab4(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
