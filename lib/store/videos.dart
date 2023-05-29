import 'package:mobx/mobx.dart';
import 'package:pro_sport/provider/videos_provider.dart';
import 'package:pro_sport/store/app_store.dart';
import 'package:pro_sport/store/video.dart';

class Videos extends AppStore {
  final ObservableList<Video> all = ObservableList();

  Future<void> fetch() async => callApi(VideosProvider().fetch());

  Future<bool> fromJson(List<dynamic> payload) async {
    all.clear();

    for (var element in payload) {
      all.add(Video()..fromJson(element));
    }

    return true;
  }
}
