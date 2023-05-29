// import 'dart:async';

// import 'package:mobx/mobx.dart';
// import 'package:nails_master/constants.dart';
// import 'package:nails_master/services/push_service.dart';
// import 'package:nails_master/store/home.dart';
// import 'package:nails_master/store/orders/orders.dart';
// import 'package:nails_master/store/reminders/reminders.dart';
// import 'package:nails_master/store/setting.dart';
// import 'package:nails_master/store/user.dart';

// class StorageService {
//   Setting setting = getIt.get<Setting>();
//   User user = getIt.get<User>();
//   Home home = getIt.get<Home>();
//   Orders orders = getIt.get<Orders>();
//   Reminders reminders = getIt.get<Reminders>();

//   Future<bool>? getStorageData() async {
//     int id = int.tryParse(await storage.read(key: 'ID') ?? '0') ?? 0;
//     String email = await storage.read(key: 'EMAIL') ?? '';
//     String password = await storage.read(key: 'PASSWORD') ?? '';
//     String token = await storage.read(key: 'TOKEN') ?? '';

//     runInAction(() {
//       user.id.value = id;
//       user.email.value = email;
//       user.password.value = password;
//       user.token.value = token;
//     });

//     if (user.id.value > 0) {
//       await initFirebase();
//     }

//     if (user.token.value.isEmpty) {
//       runInAction(() {
//         setting.goAfterInit.value = 'SignInScreen';
//         setting.setDemo(true);
//       });
//     } else {
//       setting.setDemo(false);
//       home.setChanged(true);
//       orders.setChanged(true);
//       reminders.setChanged(true);
//       runInAction(() => setting.goAfterInit.value = 'HomeScreen');
//     }

//     return true;
//   }

//   Future<void> setStorageData() async {
//     await storage.write(key: 'ID', value: user.id.value.toString());
//     await storage.write(key: 'EMAIL', value: user.email.value);
//     await storage.write(key: 'PASSWORD', value: user.password.value);
//     await storage.write(key: 'TOKEN', value: user.token.value);
//   }

//   Future<void> clearStorageData() async {
//     // await storage.delete(key: 'EMAIL');
//     await storage.delete(key: 'ID');
//     await storage.delete(key: 'PASSWORD');
//     await storage.delete(key: 'TOKEN');
//   }
// }
