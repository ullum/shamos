import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:shamos/theme.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({Key key}) : super(key: key);

  Widget header() {
    return Container(
      margin: const EdgeInsets.only(top: 30), // mengatur margin
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Login',
            style: primaryTextStyle.copyWith(
              fontSize: 24,
              fontWeight: semiBold,
            ),
          ),
          const SizedBox(
            height: 2,
          ),
          Text(
            'Sing In to Continue',
            style: subtitleTextStyle,
          ),
        ],
      ),
    );
  }

  Widget emailInput() {
    return Container(
      margin: const EdgeInsets.only(top: 70), // mengatur margin
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Email Address',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          const SizedBox(height: 12),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: backgroundColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_email.png',
                    width: 17,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      style: primaryTextStyle,
                      decoration: InputDecoration.collapsed(
                        hintText: 'Your Input Address',
                        hintStyle: subtitleTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget passwordInput() {
    return Container(
      margin: const EdgeInsets.only(top: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Password',
            style: primaryTextStyle.copyWith(
              fontSize: 16,
              fontWeight: medium,
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Container(
            height: 50,
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: backgroundColor2,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Center(
              child: Row(
                children: [
                  Image.asset(
                    'assets/icon_password.png',
                    width: 17,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: TextFormField(
                      style: primaryTextStyle,
                      obscureText: true, //merubah paswornd menjadi bintang ***
                      decoration: InputDecoration.collapsed(
                        hintText: 'Your Password',
                        hintStyle: subtitleTextStyle,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget singInButton() {
    return Container(
      height: 50,
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      child: TextButton(
        onPressed: () {},
        style: TextButton.styleFrom(
          backgroundColor: primaryColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Text(
          'Sing In',
          style: primaryTextStyle.copyWith(
            fontSize: 16,
            fontWeight: medium,
          ),
        ),
      ),
    );
  }

  Widget footer(context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Don\'t have an account?',
            style: subtitleTextStyle.copyWith(
              fontSize: 12,
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, '/sign-up');
            },
            child: Text(
              'Sign Up',
              style: purpelTextStyle.copyWith(
                fontSize: 12,
                fontWeight: medium,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor1,
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(
            horizontal: defaultMargin,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              header(),
              emailInput(),
              passwordInput(),
              singInButton(),
              const Spacer(),
              footer(context),
            ],
          ),
        ),
      ),
    );
  }
}