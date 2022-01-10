import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../common/two_button_simple_alert_dialog.dart';
import '../../provider/google_sign_in.dart';
import '../../themes/style.dart';
import 'profile_menu_item.dart';

enum _MoreMenuItem {
  bookmarks,
  nightmode,
  share,
  rate,
  feedback,
  termsConditions,
  privacyPolicy,
  logout,
}

final List<_MoreMenuItem> _menuItems = [
  _MoreMenuItem.bookmarks,
  _MoreMenuItem.nightmode,
  _MoreMenuItem.share,
  _MoreMenuItem.rate,
  _MoreMenuItem.feedback,
  _MoreMenuItem.termsConditions,
  _MoreMenuItem.privacyPolicy,
  _MoreMenuItem.logout
];

class _MenuListWidget extends StatelessWidget {
  final List<_MoreMenuItem> menuItems;
  const _MenuListWidget({Key key, this.menuItems}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      itemCount: menuItems.length,
      padding: const EdgeInsets.all(Spacing.space16),
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemBuilder: (BuildContext context, int index) {
        _MoreMenuItem menu = menuItems[index];
        return InkWell(
          onTap: () {
            switch (menu) {
              case _MoreMenuItem.nightmode:
                return Icons.mode_night;
                break;

              case _MoreMenuItem.bookmarks:
                return Icons.bookmark;
                break;
              case _MoreMenuItem.share:
                return Icons.share;
                break;
              case _MoreMenuItem.rate:
                return Icons.rate_review;
                break;
              case _MoreMenuItem.feedback:
                return Icons.feedback;
                break;
              case _MoreMenuItem.termsConditions:
                return Icons.picture_as_pdf_rounded;
                break;
              case _MoreMenuItem.privacyPolicy:
                return Icons.privacy_tip;
                break;
              case _MoreMenuItem.logout:
                showDialog<void>(
                    context: context,
                    builder: (context) {
                      return TwoButtonSimpleAlertDialog(
                        titlePadding: EdgeInsets.only(
                            left: Spacing.space16, top: Spacing.space16),
                        contentPadding: EdgeInsets.only(
                            left: 18,
                            right: 18,
                            top: Spacing.space12,
                            bottom: Spacing.space16),
                        title: 'Sure about logging out?',
                        description:
                            'You will be redirected to the login screen and will need to sign in again.',
                        positiveButtonText: 'Logout',
                        negativeButtonText: 'Cancel',
                        onPositiveButtonClick:
                            GoogleSignInProvider().googleLogout,
                      );
                    });

                break;
            }
          },
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 18),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(menu.getMenuIconFileName()),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: Spacing.space8),
                  child: Text(
                    menu.getMenuItemName(),
                    style: context.textTheme.body3Medium,
                  ),
                )
              ],
            ),
          ),
        );
      },
      separatorBuilder: (context, index) {
        return Row(
          children: [
            Expanded(
              child: Container(
                height: 1,
                color: context.colorScheme.strokes,
              ),
            ),
          ],
        );
      },
    );
  }
}

class MoreMenu extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          return SingleChildScrollView(
            child: Column(
              children: [
                ProfileMenuItem(
                  displayName: snapshot.data.displayName,
                  photoUrl: snapshot.data.photoURL,
                ),
                _MenuListWidget(
                  menuItems: _menuItems,
                )
              ],
            ),
          );
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Something went wrong'),
          );
        } else {
          return ElevatedButton(
            onPressed: GoogleSignInProvider().googleLogout,
            child: Text('Logout'),
          );
        }
      },
    );
  }
}

extension MoreMenuAssets on _MoreMenuItem {
  String getMenuItemName() {
    switch (this) {
      case _MoreMenuItem.nightmode:
        return 'Night Mode';
        break;

      case _MoreMenuItem.bookmarks:
        return "Bookmarks";
        break;
      case _MoreMenuItem.share:
        return "Share this app";
        break;
      case _MoreMenuItem.rate:
        return "Rate this app";
        break;
      case _MoreMenuItem.feedback:
        return "Feedback";
        break;
      case _MoreMenuItem.termsConditions:
        return "Terms & Conditons";
        break;
      case _MoreMenuItem.privacyPolicy:
        return "Privacy Policy";
        break;
      case _MoreMenuItem.logout:
        return "Logout";
        break;
    }
    return "";
  }

  IconData getMenuIconFileName() {
    switch (this) {
      case _MoreMenuItem.nightmode:
        return Icons.mode_night;
        break;

      case _MoreMenuItem.bookmarks:
        return Icons.bookmark;
        break;
      case _MoreMenuItem.share:
        return Icons.share;
        break;
      case _MoreMenuItem.rate:
        return Icons.rate_review;
        break;
      case _MoreMenuItem.feedback:
        return Icons.feedback;
        break;
      case _MoreMenuItem.termsConditions:
        return Icons.picture_as_pdf_rounded;
        break;
      case _MoreMenuItem.privacyPolicy:
        return Icons.privacy_tip;
        break;
      case _MoreMenuItem.logout:
        return Icons.logout;
        break;
    }
    return Icons.home;
  }
}
