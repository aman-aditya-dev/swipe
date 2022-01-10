import 'package:flutter/material.dart';

import '../themes/style.dart';
import 'base_elevated_button.dart';

/*
-------Usage---------
PrimaryButton(
          text: 'Register',
          disabled: true, //optional
          onPressed: _onPressed,
        ),
*/

class PrimaryButton extends StatelessWidget {
  final Widget child;
  final String text;
  final EdgeInsets padding;
  final bool disabled;
  final Function onPressed;
  final dynamic width;
  final height;
  PrimaryButton({
    this.child,
    this.text,
    this.padding,
    @required this.onPressed,
    this.width,
    this.height,
    this.disabled = false,
    Key key,
  })  : assert(child != null || text != null),
        super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height ?? 42.0,
      width: width ?? null,
      decoration: BoxDecoration(
        boxShadow: disabled
            ? null
            : [
                BoxShadow(
                  color: Theme.of(context).colorScheme.shadowDark,
                  offset: Offset(0, 0),
                  blurRadius: 8,
                )
              ],
      ),
      child: BaseElevatedButton(
        padding: padding,
        color: ColorShades.amber,
        disabledColor: Theme.of(context).colorScheme.disabled,
        textColor: Theme.of(context).colorScheme.textPrimaryLight,
        disabledTextColor: Theme.of(context).colorScheme.textSecGray3,
        highlightColor: Theme.of(context).colorScheme.hover,
        child: Text(
          text,
          maxLines: 2,
          overflow: TextOverflow.ellipsis,
          style: Theme.of(context).textTheme.body1Medium,
          textAlign: TextAlign.center,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10.0),
        ),
        onPressed: disabled ? null : onPressed ?? () => {},
      ),
    );
  }
}
