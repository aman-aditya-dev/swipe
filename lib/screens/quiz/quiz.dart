import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../../common/sign_in_section.dart';
import 'quiz_categories/quiz_categories.dart';

class Quiz extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
      stream: FirebaseAuth.instance.authStateChanges(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(child: CircularProgressIndicator());
        } else if (snapshot.hasData) {
          return QuizCategories();
        } else if (snapshot.hasError) {
          return Center(
            child: Text('Something went wrong'),
          );
        } else {
          return SignInSection();
        }
      },
    );
  }
}
