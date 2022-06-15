import 'package:flutter/material.dart';

class StatusRadioButton extends StatefulWidget {
  const StatusRadioButton({Key? key}) : super(key: key);

  @override
  State<StatusRadioButton> createState() => _StatusRadioButtonState();
}

class _StatusRadioButtonState extends State<StatusRadioButton> {
  String cancelReason = cancellationReasons[0];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: cancellationReasons.length,
      itemBuilder: (context, index) {
        return RadioListTile<String>(
          title: Text(cancellationReasons[index]),
          value: cancellationReasons[index],
          groupValue: cancelReason,
          onChanged: (value) {
            setState(() {
              cancelReason = value!;
            });
          },
        );
      },
    );
  }
}

List<String> cancellationReasons = [
  'Break',
  'Closed for the day',
  'Stuck in traffic',
  'Emergency',
  'Other reasons',
];
