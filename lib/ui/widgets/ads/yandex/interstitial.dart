// import 'dart:io';

// import 'package:nails_master/controller/user_controller.dart';
// import 'package:get/get.dart';
// import 'package:yandex_mobileads/mobile_ads.dart';

// Future<void> showInterstitial() async {
//   UserController user = Get.find();

//   if (!user.isPremium) {
//     final ad = await InterstitialAd.create(
//       adUnitId: Platform.isAndroid ? 'R-M-2077847-1' : 'R-M-2077859-1',
//     );

//     await ad.load(adRequest: const AdRequest());
//     await ad.show();
//     await ad.waitForDismiss();
//   }
// }
