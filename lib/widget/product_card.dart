import 'package:flutter/material.dart';
import 'package:shamos/theme.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 215,
      height: 279,
      margin: EdgeInsets.only(
        top: defaultMargin,
        right: defaultMargin,
      ),
      decoration: BoxDecoration(
        // membuat card
        borderRadius: BorderRadius.circular(20), //membuat siku melengkung
        color: Color(0xffECEDEF),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 30),
          Image.asset(
            'assets/image_shoes.png',
            width: 215,
            height: 150,
            fit: BoxFit.cover,
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hiking',
                  style: secondTextStyle.copyWith(
                    fontSize: 12,
                  ),
                ),
                SizedBox(height: 6),
                Text(
                  'COURT VISION 2.0',
                  style: blackTextStyle.copyWith(
                    fontSize: 18,
                    fontWeight: semiBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                SizedBox(height: 6),
                Text(
                  '\$58,57',
                  style: priceTextStyle.copyWith(
                    fontSize: 14,
                    fontWeight: medium,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
