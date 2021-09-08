import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:online_shop_app_ui/models/Product.dart';

import '../../../constants.dart';

class AddToCart extends StatelessWidget {
  const AddToCart({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
      const EdgeInsets.symmetric(vertical: kDefaultPadding),
      child: Row(
        children: [
          Container(
            margin:
            const EdgeInsets.only(right: kDefaultPadding),
            height: 58.0,
            width: 58.0,
            decoration: BoxDecoration(
              border: Border.all(color: product!.color!),
              borderRadius: BorderRadius.circular(18.0),
            ),
            child: IconButton(
              onPressed: () {},
              icon: SvgPicture.asset(
                'assets/icons/add_to_cart.svg',
                color: product!.color!,
              ),
            ),
          ),
          Expanded(
            child: SizedBox(
              height: 58,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  'buy now'.toUpperCase(),
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                    fontSize: 17,
                  ),
                ),
                style: ButtonStyle(
                  backgroundColor:
                  MaterialStateColor.resolveWith(
                          (states) => product!.color!),
                  shape: MaterialStateProperty.all(
                      RoundedRectangleBorder(
                          borderRadius:
                          BorderRadius.circular(18.0))),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
