import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:online_shop_app_ui/constants.dart';
import 'package:online_shop_app_ui/models/Product.dart';
import 'package:online_shop_app_ui/screen/details/details_screen.dart';

import 'categories.dart';
import 'item_card.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
          child: Text(
            'Women',
            style: Theme.of(context)
                .textTheme
                .headline5!
                .copyWith(fontWeight: FontWeight.bold),
          ),
        ),
        Categories(),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
            child: GridView.builder(
              itemCount: products.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.75,
                mainAxisSpacing: kDefaultPadding,
                crossAxisSpacing: kDefaultPadding,
              ),
              itemBuilder: (context, index) => ItemCard(
                product: products[index],
                press: () => Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => DetailsScreen(
                    product: products[index],
                  ),
                )),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
