import 'package:flutter/material.dart';
import 'package:shamos/pages/sign_in_page.dart';
import 'package:shamos/pages/splash_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => const SplashPage(),
        '/sing-in': (context) => const SingInPage(),
      },
    );
  }
}
