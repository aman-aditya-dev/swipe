import 'package:flutter/material.dart';

class BaseElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final Widget child;
  final Color color;
  final Color disabledColor;
  final Color textColor;
  final Color disabledTextColor;
  final Color hoverColor;
  final Color highlightColor;
  final double elevation;
  final double disabledElevation;
  final EdgeInsetsGeometry padding;
  final OutlinedBorder shape;

  BaseElevatedButton({
    Key key,
    @required this.onPressed,
    @required this.child,
    this.color,
    this.disabledColor,
    this.textColor,
    this.disabledTextColor,
    this.hoverColor,
    this.highlightColor,
    this.elevation,
    this.disabledElevation,
    this.padding,
    this.shape,
  });

  bool _isPressed(Set<MaterialState> states) =>
      states.contains(MaterialState.pressed);
  bool _isDisabled(Set<MaterialState> states) =>
      states.contains(MaterialState.disabled);
  bool _isHovered(Set<MaterialState> states) =>
      states.contains(MaterialState.hovered);

  @override
  Widget build(BuildContext context) {
    final style = ButtonStyle(
      backgroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (_isDisabled(states)) {
          return disabledColor;
        } else if (_isHovered(states)) {
          return hoverColor;
        }
        return color;
      }),
      foregroundColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (_isDisabled(states)) return disabledTextColor;
        return null;
      }),
      overlayColor: MaterialStateProperty.resolveWith<Color>((states) {
        if (_isPressed(states)) return highlightColor;
        return null;
      }),
      elevation: MaterialStateProperty.resolveWith<double>((states) {
        if (_isDisabled(states)) return disabledElevation;
        return elevation;
      }),
      shape: MaterialStateProperty.all<OutlinedBorder>(shape),
      padding: MaterialStateProperty.all<EdgeInsetsGeometry>(padding),
    );

    return ElevatedButton(
      onPressed: onPressed,
      style: style,
      child: child,
    );
  }
}
