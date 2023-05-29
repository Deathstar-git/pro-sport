import 'package:flutter/material.dart';

InputDecoration textFormInputDecoration(BuildContext context) =>
    InputDecoration(
      isDense: true,
      contentPadding: const EdgeInsets.fromLTRB(0, 5, 0, 5),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 1,
          color: Theme.of(context).colorScheme.background,
        ),
      ),
      errorStyle: const TextStyle(fontSize: 12, height: 1),
      errorBorder: const UnderlineInputBorder(
        borderSide: BorderSide(
          width: 3,
          color: Colors.redAccent,
        ),
      ),
    );

BoxDecoration boxDecoration(BuildContext context) => BoxDecoration(
      color: Colors.white,
      border: Border(
        top: BorderSide(
          width: 2.0,
          color: Theme.of(context).colorScheme.background,
        ),
      ),
    );

BoxDecoration backgroundDecoration() => BoxDecoration(
      color: Colors.deepPurple[100],
      image: const DecorationImage(
        image: AssetImage('assets/images/nails.png'),
        fit: BoxFit.contain,
        alignment: Alignment.bottomCenter,
        opacity: 0.5,
      ),
    );
