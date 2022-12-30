import 'package:flutter/material.dart';
import 'package:shamos/theme.dart';

import '../widget/checkout_card.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: Text('Checkout Details'),
        elevation: 0,
      );
    }

    Widget content() {
      return ListView(
        padding: EdgeInsets.symmetric(
          horizontal: defaultMargin,
        ),
        children: [
          // NOTE: LIST ITEM
          Container(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'List Item',
                  style: primaryTextStyle.copyWith(
                    fontSize: 16,
                    fontWeight: medium,
                  ),
                ),
                CheckoutCard(),
                CheckoutCard(),
              ],
            ),
          ),
          // END

          // NOTE: ADDRESS DETAILS
          Container(),
          // END

          // NOTE: PAYMENT
          Container(),
          // END
        ],
      );
    }

    return Scaffold(
      backgroundColor: backgroundColor1,
      appBar: header(),
      body: content(),
    );
  }
}
