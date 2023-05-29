import 'dart:io';

import 'package:yandex_mobileads/mobile_ads.dart';

BannerAd bannerSticky() {
  return BannerAd(
    adUnitId: Platform.isAndroid ? 'R-M-2077847-2' : 'R-M-2077859-3',
    adSize: const AdSize.flexible(width: 350, height: 150),
    adRequest: const AdRequest(),
    onAdLoaded: () {
      /* Do something */
    },
    onAdFailedToLoad: (error) {
      /* Do something */
    },
  );
}
