// import 'package:nails_master/constants.dart';
// import 'package:nails_master/i18n/strings.g.dart';

// Future<bool> initLocale() async {
//   String lc = await storage.read(key: 'LANG_CODE') ?? '';

//   if (lc.isEmpty) {
//     lc = LocaleSettings.useDeviceLocale().languageCode;

//     if (!['ru', 'en'].contains(lc)) {
//       lc = 'ru';
//     }
//   }

//   await storage.write(key: 'LANG_CODE', value: lc);
//   LocaleSettings.setLocale(lc == 'ru' ? AppLocale.ru : AppLocale.en);

//   return true;
// }
