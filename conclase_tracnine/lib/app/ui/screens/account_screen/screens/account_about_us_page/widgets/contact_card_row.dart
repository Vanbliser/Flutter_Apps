import 'package:flutter/material.dart';

import 'contact_card_widget.dart';

class ContactCardRowWidget extends StatelessWidget {
  const ContactCardRowWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: const [
          ContactCardWidget(
            title: 'Call Us',
            cardIcon: Icons.call,
            cardColor: Color(0xffD18832),
          ),
          ContactCardWidget(
            title: 'Email Us',
            cardColor: Color(0xff62C6B7),
            cardIcon: Icons.mail_outline_outlined,
          ),
          ContactCardWidget(
            title: 'Chat Us',
            cardIcon: Icons.chat_bubble_outline_rounded,
            cardColor: Color(0xffA646D4),
          ),
        ],
      ),
    );
  }
}
