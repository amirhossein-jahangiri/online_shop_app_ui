import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app_ui/constants.dart';
import 'package:online_shop_app_ui/models/Product.dart';
import 'package:online_shop_app_ui/screen/details/components/product_title_with_image.dart';

import 'add_to_cart.dart';
import 'cart_counter.dart';
import 'color_and_size.dart';
import 'color_dot.dart';
import 'counter_with_fav_btn.dart';
import 'description.dart';

class Body extends StatelessWidget {
  final Product? product;

  const Body({this.product});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          Stack(
            children: [
              Container(
                margin: EdgeInsets.only(top: size.height * 0.32),
                padding: EdgeInsets.only(
                    top: size.height * 0.15,
                    left: kDefaultPadding,
                    right: kDefaultPadding),
                height: 550.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(25),
                      topRight: Radius.circular(25)),
                ),
                child: Column(
                  children: [
                    ColorAndSize(product: product),
                    SizedBox(height: kDefaultPadding / 2),
                    Description(product: product),
                    SizedBox(height: kDefaultPadding / 2),
                    CounterWithFavBtn(),
                    SizedBox(height: kDefaultPadding / 2),
                    AddToCart(product: product),
                  ],
                ),
              ),
              ProductTitleWithImage(product: product),
            ],
          ),
        ],
      ),
    );
  }
}

