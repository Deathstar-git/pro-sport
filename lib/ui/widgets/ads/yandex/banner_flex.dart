import 'dart:io';

import 'package:yandex_mobileads/mobile_ads.dart';

BannerAd bannerFlex(int width, int height) {
  return BannerAd(
    adUnitId: Platform.isAndroid ? 'R-M-2077847-2' : 'R-M-2077859-3',
    adSize: AdSize.flexible(width: width, height: height),
    adRequest: const AdRequest(),
    onAdLoaded: () {
      /* Do something */
    },
    onAdFailedToLoad: (error) {
      /* Do something */
    },
  );
}
