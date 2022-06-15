import 'package:flutter/material.dart';

class TextInputWidget extends StatelessWidget {
  final String title;
  const TextInputWidget({required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
          border: const OutlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 1,
            ),
          ),
          hintText: title,
          hintStyle: const TextStyle(
            fontSize: 14,
            color: Colors.grey,
          )),
    );
  }
}
