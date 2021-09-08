import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:online_shop_app_ui/constants.dart';
import 'package:online_shop_app_ui/models/Product.dart';
import 'package:online_shop_app_ui/screen/details/components/body.dart';

class DetailsScreen extends StatelessWidget {
  final Product? product;

  const DetailsScreen({this.product});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: product!.color,
      appBar: buildAppBar(context),
      body: Body(product: product!),
    );
  }

  AppBar buildAppBar(BuildContext context) {
    return AppBar(
      backgroundColor: product!.color,
      elevation: 0.0,
      leading: IconButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          icon: SvgPicture.asset(
            'assets/icons/back.svg',
            color: Colors.white,
          )),
      actions: [
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/search.svg',
            )),
        IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/cart.svg',
            )),
        SizedBox(width: kDefaultPadding),
      ],
    );
  }
}
