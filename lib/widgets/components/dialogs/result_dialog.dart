import 'package:flutter/material.dart';

class ResultDialog extends StatelessWidget {
  final String text;

  ResultDialog({required this.text});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: const Text('Result'),
      content: Text(text),
      actions: <Widget>[
        TextButton(
          onPressed: () {
            Navigator.of(context).pop();
          },
          child: const Text('Close'),
        ),
      ],
    );
  }
}
