// import 'package:nails_master/controller/ads_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';

// class AdsBanner extends StatelessWidget {
//   const AdsBanner({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     AdsController ads = Get.find();

//     ads.ads();

//     return Obx(
//       () => ads.bannerUri.value.isNotEmpty
//           ? GestureDetector(
//               behavior: HitTestBehavior.opaque,
//               onTap: () async => ads.goAds(),
//               child: Container(
//                 width: 380,
//                 height: 253,
//                 margin: const EdgeInsets.all(4),
//                 decoration: BoxDecoration(
//                   borderRadius: const BorderRadius.all(
//                     Radius.circular(10),
//                   ),
//                   image: DecorationImage(
//                     image: NetworkImage(ads.bannerUri.value),
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//               ),
//             )
//           : Container(),
//     );
//   }
// }
