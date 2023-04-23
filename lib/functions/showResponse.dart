// ignore_for_file: non_constant_identifier_names, file_names

import 'package:flutter/material.dart';

Future<void> ShowResponse(BuildContext context, String response) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text(
          'Response',
          style: TextStyle(fontFamily: ("NunitoSans"), fontSize: 25),
        ),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(
                response,
                style:
                    const TextStyle(fontFamily: ("NunitoSans"), fontSize: 22),
              ),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text(
              'Close',
              style: TextStyle(fontFamily: ("NunitoSans"), fontSize: 18),
            ),
            onPressed: () {
              Navigator.of(context).pop();
            },
          ),
        ],
      );
    },
  );
}
