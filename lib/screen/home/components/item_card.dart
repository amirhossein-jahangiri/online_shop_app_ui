import 'package:flutter/material.dart';
import 'package:online_shop_app_ui/models/Product.dart';

import '../../../constants.dart';

class ItemCard extends StatelessWidget {
  final Product? product;
  final Function()? press;
  const ItemCard({this.product , this.press});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.all(kDefaultPadding),
              decoration: BoxDecoration(
                color: product!.color,
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: Hero(tag: '${product!.id!}',child: Image.asset(product!.image!)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: kDefaultPadding / 4),
            child: Text(
              product!.title!,
              style: TextStyle(color: kTextLightColor),
            ),
          ),
          Text(
            '\$ ${product!.price!}',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}