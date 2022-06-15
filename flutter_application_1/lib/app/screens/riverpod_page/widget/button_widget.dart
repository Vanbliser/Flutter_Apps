import 'package:flutter/material.dart';

class ButtonWidget extends StatefulWidget {
  void Function() onPressed;
  String text;
  ButtonWidget({required this.onPressed, required this.text});

  @override
  State<ButtonWidget> createState() => _ButtonWidgetState();
}

class _ButtonWidgetState extends State<ButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: widget.onPressed,
      child: Text(widget.text),
    );
  }
}
