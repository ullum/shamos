import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shamos/providers/auth_provider.dart';
import 'package:shamos/pages/cart_page.dart';
import 'package:shamos/pages/checkout_success_page.dart';
import 'package:shamos/pages/detail_chat_page.dart';
import 'package:shamos/pages/edit_profile_page.dart';
import 'package:shamos/pages/home/main_page.dart';
import 'package:shamos/pages/product_page.dart';
import 'package:shamos/pages/sign_in_page.dart';
import 'package:shamos/pages/sign_up_page.dart';
import 'package:shamos/pages/splash_page.dart';
import 'package:shamos/pages/checkout_page.dart';
import 'package:shamos/providers/product_provide.dart';
import 'package:shamos/providers/wishlist_provider.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (context) => AuthProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => ProductProvider(),
        ),
        ChangeNotifierProvider(
          create: (context) => WishlistProvider(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        routes: {
          '/': (context) => SplashPage(),
          '/sign-in': (context) => SignInPage(),
          '/sign-up': (context) => SignUpPage(),
          '/home': (context) => MainPage(),
          '/detail-chat': (context) => DetailChatPage(),
          '/edit-profile': (context) => EditProfilePage(),
          // '/product': (context) => ProductPage(), dihapus
          '/cart': (context) => CartPage(),
          '/checkout': (context) => CheckoutPage(),
          '/checkout-success': (context) => CheckoutSuccessPage(),
        },
      ),
    );
  }
}
