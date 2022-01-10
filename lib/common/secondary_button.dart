import 'package:flutter/material.dart';
import '../themes/style.dart';

class SecondaryButton extends StatelessWidget {
  final String text;
  final Widget child;
  final String semanticsLabel;
  final bool disabled, noWidth, hideShadow;
  final padding;
  final height;
  final double width;
  final Function onPressed;

  SecondaryButton({
    this.text,
    this.padding,
    this.height,
    this.disabled = false,
    this.hideShadow = false,
    this.noWidth = false,
    @required this.onPressed,
    this.width,
    this.semanticsLabel,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    ThemeData theme = Theme.of(context);

    return GestureDetector(
        onTap: disabled ? null : onPressed,
        child: Container(
          height: height ?? 42.0,
          padding: padding ?? EdgeInsets.zero,
          decoration: BoxDecoration(
            color: disabled ? ColorShades.grey100 : ColorShades.white,
            borderRadius: BorderRadius.circular(10.0),
            border: disabled
                ? null
                : Border.all(
                    color: ColorShades.amber,
                  ),
            boxShadow: disabled || (hideShadow)
                ? null
                : [
                    BoxShadow(
                      color: Theme.of(context).colorScheme.shadowDark,
                      offset: Offset(0, 0),
                      blurRadius: 8,
                    )
                  ],
          ),
          width: getWidth(),
          child: Center(
            child: child != null
                ? child
                : Text(
                    text,
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: theme.textTheme.body1Medium.copyWith(
                      color: disabled
                          ? theme.colorScheme.textSecGray2
                          : ColorShades.amber,
                    ),
                  ),
          ),
        ));
  }

  double getWidth() {
    if (width != null) return width;
    return noWidth ? null : double.infinity;
  }
}
