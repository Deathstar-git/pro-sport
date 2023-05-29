import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:pro_sport/inits/error.dart';
import 'package:pro_sport/routes.dart';
import 'package:pro_sport/store/init_store.dart';
import 'package:pro_sport/theme/light.dart';

void main() async {
  await dotenv.load(fileName: '.env');

  initCatchErrors();

  initStores();
  WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Flutter Demo',
      theme: lightTheme,
      // darkTheme: darkTheme,
      routerConfig: router,
      debugShowCheckedModeBanner: false,
    );
  }
}
