import 'package:flutter/material.dart';
import 'package:shamos/pages/detail_chat_page.dart';
import 'package:shamos/pages/edit_profile_page.dart';
import 'package:shamos/pages/home/main_page.dart';
import 'package:shamos/pages/sign_in_page.dart';
import 'package:shamos/pages/sign_up_page.dart';
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
        '/sign-in': (context) => const SignInPage(),
        '/sign-up': (context) => const SignUpPage(),
        '/home': (context) => const MainPage(),
        '/detail-chat': (context) => const DetailChatPage(),
        '/edit-profile': (context) => const EditProfilePage(),
      },
    );
  }
}
