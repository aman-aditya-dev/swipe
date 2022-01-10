import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../themes/style.dart';
import 'base_image.dart';
import 'image_asset.dart';
import 'primary_button.dart';
import 'secondary_button.dart';

class TwoButtonDialog extends StatelessWidget {
  final Widget title;
  final Widget body;
  final String primaryButtonText;
  final String secondaryButtonText;
  final VoidCallback onPrimaryButtonClick;
  final VoidCallback onSecondaryButtonClick;
  final EdgeInsetsGeometry titlePadding;
  final EdgeInsetsGeometry contentPadding;
  final bool showCloseIcon;

  const TwoButtonDialog(
      {Key key,
      @required this.title,
      @required this.body,
      @required this.primaryButtonText,
      @required this.secondaryButtonText,
      @required this.onPrimaryButtonClick,
      this.titlePadding = const EdgeInsets.fromLTRB(
          Spacing.space24, Spacing.space24, Spacing.space24, 0.0),
      this.contentPadding = const EdgeInsets.all(Spacing.space16),
      this.onSecondaryButtonClick,
      this.showCloseIcon = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SimpleDialog(
      contentPadding: contentPadding,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(20.0),
      ),
      titlePadding: titlePadding,
      title: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Expanded(child: title),
          Visibility(
            visible: showCloseIcon,
            child: GestureDetector(
              child: BaseImage(
                asset: LocalAsset(url: 'assets/images/close.svg'),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          )
        ],
      ),
      children: <Widget>[
        body,
        SizedBox(
          height: Spacing.space16,
        ),
        Row(
          children: [
            Expanded(
              child: SecondaryButton(
                padding: EdgeInsets.symmetric(
                    vertical: 10.0, horizontal: Spacing.minSpacing),
                text: secondaryButtonText,
                onPressed: () {
                  Navigator.pop(context);
                  onSecondaryButtonClick?.call();
                },
              ),
            ),
            SizedBox(
              width: Spacing.space16,
            ),
            Expanded(
              child: PrimaryButton(
                text: primaryButtonText,
                onPressed: () {
                  onPrimaryButtonClick?.call();
                  Navigator.pop(context);
                },
              ),
            )
          ],
        )
      ],
    );
  }
}
