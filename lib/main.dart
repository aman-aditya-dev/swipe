import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'provider/google_sign_in.dart';
import 'route_generator.dart';
import 'screens/home/home_screen.dart';
import 'themes/style.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  FluroRouter.defineRoutes();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => GoogleSignInProvider(),
      child: MaterialApp(
        title: 'swipe news',
        theme: appTheme(context),
        darkTheme: darkAppTheme(context),
        themeMode: ThemeMode.dark,
        home: Home(),
        onGenerateRoute: FluroRouter.router.generator,
      ),
    );
  }
}
