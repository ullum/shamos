import 'package:flutter/material.dart';
import 'package:shamos/theme.dart';

class ChatBubble extends StatelessWidget {
  const ChatBubble({Key key, this.text = '', this.isSender = false})
      : super(key: key);

  final String text;
  final bool isSender; //true untuk pengirim : false untuk si penerima

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(top: 30),
      child: Row(
        mainAxisAlignment:
            isSender ? MainAxisAlignment.end : MainAxisAlignment.start,
        children: [
          // mengatur sebelah kiri atau kanan
          Flexible(
            child: Container(
              constraints: BoxConstraints(
                  maxWidth: MediaQuery.of(context).size.width * 0.7),
              padding: const EdgeInsets.symmetric(
                horizontal: 16,
                vertical: 12,
              ),
              decoration: BoxDecoration(
                // color: backgroundColor5,
                color: isSender ? backgroundColor5 : backgroundColor4,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(isSender ? 12 : 0),
                  topRight: Radius.circular(isSender ? 0 : 12),
                  bottomLeft: const Radius.circular(12),
                  bottomRight: const Radius.circular(12),
                ),
              ),
              child: Text(
                text,
                style: primaryTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
