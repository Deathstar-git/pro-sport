import 'package:flutter/material.dart';

Future<void> showYesNo(
  BuildContext context,
  String body,
  dynamic callback,
) async {
  return showDialog<void>(
    context: context,
    barrierDismissible: false, // user must tap button!
    builder: (BuildContext context) {
      // BuildContext dcontext =  context;
      return AlertDialog(
        title: const Text('Подтверждение'),
        content: SingleChildScrollView(
          child: ListBody(
            children: <Widget>[
              Text(body),
            ],
          ),
        ),
        actions: <Widget>[
          TextButton(
            child: const Text('Нет'),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          TextButton(
            child: const Text('Да'),
            onPressed: () async {
              if (callback != null) await callback();
              Navigator.pop(context);
            },
          ),
        ],
      );
    },
  );
}
