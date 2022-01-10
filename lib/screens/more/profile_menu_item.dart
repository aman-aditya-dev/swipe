import 'package:flutter/material.dart';

import '../../common/card_view.dart';
import '../../themes/style.dart';

class ProfileMenuItem extends StatelessWidget {
  final String displayName;
  final String photoUrl;

  ProfileMenuItem(
      {Key key, @required this.displayName, @required this.photoUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        // Route to profile alone page
      },
      child: Padding(
        padding: const EdgeInsets.only(
            left: Spacing.space16,
            right: Spacing.space16,
            top: Spacing.space16),
        child: CardView(
          radius: 10,
          padding: const EdgeInsets.all(Spacing.space16),
          color: context.colorScheme.surface,
          child: Row(
            children: [
              CircleAvatar(
                backgroundImage: NetworkImage(photoUrl),
                maxRadius: Spacing.space24,
                minRadius: Spacing.space24,
              ),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: Spacing.space12),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                              child: Text(
                            displayName ?? '',
                            maxLines: 2,
                            style: context.textTheme.h3,
                          )),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Icon(Icons.arrow_right)
            ],
          ),
        ),
      ),
    );
  }
}
