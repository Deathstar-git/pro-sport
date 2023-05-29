// import 'dart:async';

// import 'package:nails_master/controller/user_controller.dart';
// import 'package:nails_master/widgets/ads/yandex/banner_sticky.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:yandex_mobileads/mobile_ads.dart';

// class StickyAds extends StatefulWidget {
//   const StickyAds({super.key});

//   @override
//   State<StickyAds> createState() => _StickyAdsState();
// }

// class _StickyAdsState extends State<StickyAds> {
//   bool isClosed = false;
//   BannerAd banner = bannerSticky();

//   @override
//   void initState() {
//     super.initState();

//     Timer.periodic(const Duration(seconds: 15), (timer) {
//       if (isClosed) {
//         timer.cancel();

//         return;
//       }

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

//     return BottomAppBar(
//       child: isClosed || user.isPremium
//           ? Container(height: 0)
//           : Stack(children: [
//               SizedBox(
//                   height: 150,
//                   child: Center(child: AdWidget(bannerAd: banner))),
//               Positioned(
//                 top: 7,
//                 left: 7,
//                 child: GestureDetector(
//                   onTap: () => setState(() => isClosed = true),
//                   behavior: HitTestBehavior.opaque,
//                   child: Container(
//                     decoration: BoxDecoration(
//                       color: Colors.white,
//                       border: Border.all(
//                         color: Colors.red,
//                         width: 2,
//                       ),
//                       borderRadius: const BorderRadius.all(
//                         Radius.circular(20),
//                       ),
//                     ),
//                     child: const Icon(Icons.close_outlined, color: Colors.red),
//                   ),
//                 ),
//               ),
//             ]),
//     );
//   }
// }
