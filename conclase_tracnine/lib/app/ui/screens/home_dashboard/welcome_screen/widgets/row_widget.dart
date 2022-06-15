import 'package:flutter/material.dart';

class ButtonRowWidget extends StatelessWidget {
  const ButtonRowWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: const [
        Icon(Icons.arrow_back_ios_new_rounded, color: Colors.grey),
        Icon(Icons.arrow_back_ios_new_rounded, color: Colors.grey),
        Icon(Icons.arrow_back_ios_new_rounded, color: Colors.grey),
      ],
    );
  }
}
