import 'package:flutter/material.dart';

import '../../../constants.dart';

class ColorDot extends StatelessWidget {
  final Color? color;
  final bool? isSelected;

  const ColorDot({this.color, this.isSelected = false});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(2.5),
      margin: const EdgeInsets.only(
        top: kDefaultPadding / 4,
        right: kDefaultPadding / 2,
      ),
      height: 24.0,
      width: 24.0,
      decoration: BoxDecoration(
        border: Border.all(color: isSelected! ? color! : Colors.transparent),
        shape: BoxShape.circle,
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
          color: color,
          shape: BoxShape.circle,
        ),
      ),
    );
  }
}
