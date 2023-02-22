import 'package:flutter/material.dart';
import 'package:instagramui/reuses/detail_screen_body.dart';
import 'package:instagramui/reuses/products.dart';

import 'constants.dart';

class DetailScreen extends StatelessWidget {
  final Product product;
  const DetailScreen({super.key, required this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product.color,
      appBar: buildAppBar(context),
      body: DetailScreenBody(
        product: product,
      ),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product.color,
      elevation: 0,
      leading: IconButton(
        onPressed: () => Navigator.pop(context),
        icon: const Icon(
          Icons.arrow_back,
          color: Colors.white,
        ),
      ),
      actions: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.search,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add_shopping_cart_rounded,
          ),
        ),
        const SizedBox(
          width: kDefaultPadding / 2,
        ),
      ],
    );
  }
}
