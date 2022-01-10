import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import '../provider/google_sign_in.dart';

class SignInSection extends StatelessWidget {
  SignInSection({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        final provider =
            Provider.of<GoogleSignInProvider>(context, listen: false);
        provider.googleLogin();
      },
      icon: FaIcon(
        FontAwesomeIcons.google,
        color: Colors.red,
      ),
      label: Text('Sign Up with Google'),
    );
  }
}
