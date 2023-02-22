import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class UserSearch extends StatelessWidget {
  const UserSearch({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        iconTheme: const IconThemeData(
          color: Colors.black,
        ),
        backgroundColor: Colors.white,
        title: Container(
          height: 50,
          decoration: BoxDecoration(
            border: Border.all(
              color: Colors.grey,
              width: 1,
            ),
            borderRadius: const BorderRadius.all(Radius.circular(15)),
          ),
          child: const TextField(
            decoration: InputDecoration(
              hintText: 'Search',
              border: InputBorder.none,
              prefix: Icon(Icons.search),
            ),
          ),
        ),
        actions: <Widget>[
          Container(
            margin: const EdgeInsets.only(
              right: 20,
              left: 20,
            ),
            child: const Icon(Icons.camera_alt),
          ),
        ],
      ),
      body: CustomScrollView(
        slivers: <Widget>[
          SliverStaggeredGrid.count(
            crossAxisCount: 3,
            mainAxisSpacing: 1,
            crossAxisSpacing: 1,
            children: List.generate(
              18,
              (int i) {
                return _gridItem(i);
              },
            ),
            staggeredTiles: List.generate(
              (18),
              (int index) {
                int remain = index % 18;
                if (remain == 1 || remain == 9) {
                  return const StaggeredTile.count(2, 2);
                }
                return const StaggeredTile.count(1, 1);
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _gridItem(int i) {
    return Image.asset(
      "assets/$i.jpeg",
      fit: BoxFit.fill,
    );
  }
}
