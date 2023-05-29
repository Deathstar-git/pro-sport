import 'package:flutter/material.dart';
import 'package:get_it/get_it.dart';
import 'package:intl/intl.dart';

final getIt = GetIt.I;
final GlobalKey myApp = GlobalKey();
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();
final GlobalKey<ScaffoldMessengerState> snackbarKey =
    GlobalKey<ScaffoldMessengerState>();

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${substring(1)}";
  }
}

class Space {
  Space._();

  static const v5 = SizedBox(height: 5.0);
  static const v10 = SizedBox(height: 10.0);
  static const v15 = SizedBox(height: 15.0);
  static const v20 = SizedBox(height: 20.0);

  static const h5 = SizedBox(width: 5.0);
  static const h10 = SizedBox(width: 10.0);
  static const h15 = SizedBox(width: 15.0);
  static const h20 = SizedBox(width: 20.0);
}

class Format {
  Format._();

  static String yMMMEd(DateTime data) => DateFormat.yMMMEd(
        'ru',
      ).add_jm().format(data);

  static String yMMMd(DateTime data) => DateFormat.yMMMd(
        'ru',
      ).format(data);

  static String yMMMM(DateTime data) => DateFormat.yMMMM(
        'ru',
      ).format(data).capitalize();

  static String jm(DateTime data) => DateFormat.jm(
        'ru',
      ).format(data);

  static DateTime dtEmpty() => DateTime(1900, 01, 01);

  static String dateToAPI(DateTime data) =>
      DateFormat('yyyy-MM-dd').format(data);

  static DateTime dateYMD(DateTime date) =>
      DateTime(date.year, date.month, date.day);
}

Widget spinner(Color? color) => Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: CircularProgressIndicator(
          color: color,
          strokeWidth: 2,
        ),
      ),
    );

// Language
enum Language { ru, en }

class Snack {
  final String text;

  Snack(this.text);

  void success() {
    snackbarKey.currentState?.showSnackBar(
      snackBar(
        text,
        Colors.green,
        Icons.check_circle_outlined,
      ),
    );
  }

  void error() {
    snackbarKey.currentState?.showSnackBar(
      snackBar(
        text,
        Colors.red,
        Icons.error_outline_outlined,
      ),
    );
  }

  void warning() {
    snackbarKey.currentState?.showSnackBar(
      snackBar(
        text,
        Colors.blueGrey,
        Icons.warning_outlined,
      ),
    );
  }

  SnackBar snackBar(String text, Color color, IconData icon) {
    return SnackBar(
      backgroundColor: color,
      padding: const EdgeInsets.all(20),
      content: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Icon(icon, color: Colors.white),
          Space.h10,
          Flexible(child: Text(text)),
        ],
      ),
      duration: const Duration(seconds: 3),
    );
  }
}

Future<void> pause2sec() async =>
    await Future.delayed(const Duration(seconds: 2), () {});

const Map activity = {
  'home': 'Главная',
  'extreme': 'Экстремальный спорт',
  'swimming': 'Плавание',
  'fitness': 'Фитнес',
  'triathlon': 'Триатлон',
  'yoga': 'Йога, пилатес и все такое',
  'nutrition': 'Правильное питание'
};
