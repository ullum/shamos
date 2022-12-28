import 'package:flutter/material.dart';
import 'package:shamos/theme.dart';
import 'package:shamos/widget/cart_card.dart';

class CartPage extends StatelessWidget {
  const CartPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // header AppBar
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: const Text('Your Cart'),
        elevation: 0,
      );
    }

    // emptyCart
    Widget emptyCart() {
      return Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icon_empty_cart.png',
              width: 80,
            ),
            const SizedBox(height: 20),
            Text(
              'Oppss! Your Cart is Empty',
              style: primaryTextStyle.copyWith(
                fontWeight: medium,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Let\'s find your favorite shoes',
              style: secondTextStyle,
            ),
            const SizedBox(height: 20),
            // button
            Container(
              width: 154,
              height: 44,
              margin: const EdgeInsets.only(
                top: 20,
              ),
              child: TextButton(
                onPressed: () {
                  // Navigator.pop(context);
                  Navigator.pushNamedAndRemoveUntil(
                      context, '/home', (route) => false);
                  // kembali ke beranda
                },
                style: TextButton.styleFrom(
                  backgroundColor: primaryColor,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: Text(
                  'Explorer Store',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }

    Widget content() {
      return ListView(
        children: [
          CartCard(),
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor3,
      appBar: header(),
      body: emptyCart(),
      // body: content(),
    );
  }
}
