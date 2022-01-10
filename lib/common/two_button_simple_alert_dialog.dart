import 'package:flutter/material.dart';

import '../themes/style.dart';
import 'base_image.dart';
import 'image_asset.dart';
import 'two_button_dialog.dart';

class TwoButtonSimpleAlertDialog extends StatelessWidget {
  final String title;
  final String description;
  final Widget descriptionWidget;
  final String positiveButtonText;
  final String negativeButtonText;
  final VoidCallback onPositiveButtonClick;
  final VoidCallback onNegativeCallback;
  final EdgeInsetsGeometry titlePadding;
  final EdgeInsetsGeometry contentPadding;
  final bool showCloseIcon;

  const TwoButtonSimpleAlertDialog(
      {Key key,
      @required this.title,
      this.description,
      this.descriptionWidget,
      @required this.positiveButtonText,
      @required this.negativeButtonText,
      @required this.onPositiveButtonClick,
      this.showCloseIcon = false,
      this.titlePadding = const EdgeInsets.fromLTRB(
          Spacing.space16, Spacing.space24, Spacing.space24, 0.0),
      this.contentPadding = const EdgeInsets.all(Spacing.space16),
      this.onNegativeCallback})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TwoButtonDialog(
      titlePadding: titlePadding,
      contentPadding: contentPadding,
      title: Row(
        children: [
          Expanded(
            child: Text(
              title,
              style: context.textTheme.h4,
            ),
          ),
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
      body: descriptionWidget ??
          (description != null
              ? Text(
                  description,
                  style: context.textTheme.body1Regular,
                )
              : const SizedBox.shrink()),
      primaryButtonText: positiveButtonText,
      secondaryButtonText: negativeButtonText,
      onPrimaryButtonClick: () {
        onPositiveButtonClick?.call();
      },
      onSecondaryButtonClick: () {
        onNegativeCallback?.call();
      },
    );
  }
}
