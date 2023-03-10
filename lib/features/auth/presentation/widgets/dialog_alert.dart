import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Future<void> showAlertDialog(
  String message, {
  required BuildContext context,
  hideButton = false,
  bool success = false,
}) {
  final navigator = Navigator.of(context);
  return showCupertinoDialog(
    context: context,
    barrierDismissible: true,
    builder: (context) {
      return CupertinoAlertDialog(
        content: Text(
          message,
          style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        actions: <Widget>[
          if (!hideButton)
            CupertinoDialogAction(
              onPressed: () {
                navigator.pop();
                if (success) {
                  navigator.pop();
                }
              },
              child: const Text('Ok'),
            ),
        ],
      );
    },
  );
}
