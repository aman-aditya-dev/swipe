import 'package:flutter/material.dart';
import '../themes/style.dart';

class CardView extends StatelessWidget {
  final Widget child;
  final double radius;
  final Color color;
  final EdgeInsets padding;

  const CardView({
    Key key,
    this.radius = 20.0,
    this.child,
    this.color = ColorShades.white,
    this.padding,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding,
      decoration: BoxDecoration(
          boxShadow: [Shadows(context).card],
          color: color,
          borderRadius: BorderRadius.circular(radius)),
      child: child,
    );
  }
}
