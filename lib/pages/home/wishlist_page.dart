import 'package:flutter/material.dart';
import 'package:shamos/theme.dart';

class WishlistPage extends StatelessWidget {
  const WishlistPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // bagian atas page
    Widget header() {
      return AppBar(
        backgroundColor: backgroundColor1,
        centerTitle: true,
        title: const Text('Favorite Shoes'),
        elevation: 0,
        automaticallyImplyLeading: false,
      );
    }

    Widget emptyWishlist() {
      return Expanded(
        child: Container(
          color: backgroundColor3,
          width: double.infinity,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/image_wishlist.png',
                width: 74,
              ),
              const SizedBox(height: 23),
              Text(
                'You don\'t have dream shoes?',
                style: primaryTextStyle.copyWith(
                  fontSize: 16,
                  fontWeight: medium,
                ),
              ),
              const SizedBox(height: 12),
              Text(
                'Les\'t find your favorite shoes',
                style: secondTextStyle,
              ),
              const SizedBox(height: 20),
              // TextButton(onPressed: ->(){}, child: ->name text link),
              Container(
                height: 44,
                child: TextButton(
                  onPressed: () {},
                  style: TextButton.styleFrom(
                    backgroundColor: primaryColor,
                    padding: const EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 27,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: Text(
                    'Explore Store',
                    style: primaryTextStyle.copyWith(
                      fontSize: 16,
                      fontWeight: medium,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      );
    }

    return Column(
      children: [
        header(),
        emptyWishlist(),
      ],
    );
  }
}
