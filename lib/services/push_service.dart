import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:mobx/mobx.dart';
import 'package:pro_sport/constants.dart';
import 'package:pro_sport/services/firebase_options.dart';
import 'package:pro_sport/store/push_store.dart';

Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
  // If you're going to use other Firebase services in the background, such as Firestore,
  // make sure you call `initializeApp` before using other Firebase services.
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
}

Future<void> initFirebase() async {
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);

  FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true, // Required to display a heads up notification
    badge: true,
    sound: true,
  );

  await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
    alert: true, // Required to display a heads up notification
    badge: true,
    sound: true,
  );

  FirebaseMessaging.onMessageOpenedApp.listen((message) {
    // Message clicked!
  });

  FirebaseMessaging.onMessage.listen((RemoteMessage event) {
    Push push = getIt<Push>();

    runInAction(() {
      push.title.value = event.notification!.title!;
      push.body.value = event.notification!.body!;
    });

    push.setChanged(true);
  });

  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();

  /// Custom notification channel
  AndroidNotificationChannel channel = const AndroidNotificationChannel(
    'pro_sport_channel_1',
    'ProSport',
    importance: Importance.high,
    playSound: true,
    enableVibration: true,
    enableLights: true,
    showBadge: true,
  );

  await flutterLocalNotificationsPlugin
      .resolvePlatformSpecificImplementation<
          AndroidFlutterLocalNotificationsPlugin>()
      ?.createNotificationChannel(channel);
}
