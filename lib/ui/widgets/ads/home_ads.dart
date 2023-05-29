// import 'dart:async';

// import 'package:nails_master/controller/user_controller.dart';
// import 'package:nails_master/widgets/ads/yandex/banner_flex.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:yandex_mobileads/mobile_ads.dart';

// const int width = 360;
// const int height = 260;

// class HomeAds extends StatefulWidget {
//   const HomeAds({super.key});

//   @override
//   State<HomeAds> createState() => _HomeAdsState();
// }

// class _HomeAdsState extends State<HomeAds> {
//   BannerAd banner = bannerFlex(width, height);

//   @override
//   void initState() {
//     super.initState();

//     Timer.periodic(const Duration(seconds: 15), (timer) {
//       if (!mounted) {
//         return;
//       } else if (banner.isLoaded) {
//         banner.load();
//       }
//     });
//   }

//   @override
//   Widget build(BuildContext context) {
//     UserController user = Get.find();

//     return user.isPremium
//         ? Container(height: 0)
//         : Padding(
//             padding: const EdgeInsets.all(5.0),
//             child: Container(
//               decoration: const BoxDecoration(
//                 borderRadius: BorderRadius.all(Radius.circular(10)),
//                 color: Colors.white,
//               ),
//               // width: width.toDouble(),
//               height: height.toDouble(),
//               child: Padding(
//                 padding: const EdgeInsets.all(10),
//                 child: Center(child: AdWidget(bannerAd: banner)),
//               ),
//             ),
//           );
//   }
// }
