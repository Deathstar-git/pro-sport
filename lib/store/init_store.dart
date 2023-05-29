import 'package:pro_sport/constants.dart';
import 'package:pro_sport/store/push_store.dart';
import 'package:pro_sport/store/video.dart';
import 'package:pro_sport/store/videos.dart';

void initStores() {
  getIt.registerLazySingleton<Videos>(() => Videos());
  getIt.registerLazySingleton<Video>(() => Video());
  getIt.registerLazySingleton<Push>(() => Push());
}
