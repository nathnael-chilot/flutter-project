import 'package:flutter/material.dart';
import 'package:instagramui/reuses/body.dart';
import 'package:instagramui/reuses/constants.dart';

class UserShop extends StatelessWidget {
  const UserShop({super.key});

  static const IconData add_shopping_cart_rounded =
      IconData(0xf538, fontFamily: 'MaterialIcons');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Body(),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      leading: IconButton(
        onPressed: () {},
        icon: const Icon(
          Icons.arrow_back,
          color: kTextColor,
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
            color: kTextColor,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add_shopping_cart_rounded,
            color: kTextColor,
          ),
        ),
        const SizedBox(
          width: kDefaultPadding / 2,
        ),
      ],
    );
  }
}
