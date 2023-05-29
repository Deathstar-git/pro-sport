// import 'dart:math';

// import 'package:nails_master/controller/user_controller.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_inappwebview/flutter_inappwebview.dart';
// import 'package:get/get.dart';

// class TigraVideoAds extends StatelessWidget {
//   const TigraVideoAds({super.key});

//   @override
//   Widget build(BuildContext context) {
//     UserController user = Get.find();

//     return !user.isPremium
//         ? Container(
//             width: 380,
//             height: 215,
//             margin: const EdgeInsets.all(4),
//             decoration: const BoxDecoration(
//               borderRadius: BorderRadius.all(
//                 Radius.circular(10),
//               ),
//             ),
//             child: InAppWebView(
//               initialUrlRequest: URLRequest(
//                 url: Uri.parse(
//                     'https://nails_master.ru/tigra.html?q=${Random().nextInt(1000)}'),
//               ),
//             ),
//           )
//         : Container();
//   }
// }
