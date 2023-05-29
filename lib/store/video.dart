import 'package:mobx/mobx.dart';
import 'package:pro_sport/store/app_store.dart';

class Video extends AppStore {
  final Observable<String> id = ''.obs();
  final Observable<String> widgetId = ''.obs();
  final Observable<String> url = ''.obs();
  final Observable<String> picture = ''.obs();
  final Observable<String> name = ''.obs();
  final Observable<String> description = ''.obs();
  final Observable<String> author = ''.obs();
  final Observable<DateTime> createdAt = Observable(DateTime.now());

  String idName() {
    return '${id.value} - ${name.value}';
  }

  Future<bool> fromJson(Map<String, dynamic> payload) async {
    runInAction(() {
      id.value = jsonString(payload['id']);
      widgetId.value = jsonString(payload['widgetid']);
      url.value = jsonString(payload['url']);
      picture.value = jsonString(payload['picture']);
      name.value = jsonString(payload['name']);
      description.value = jsonString(payload['description']);
      author.value = jsonString(payload['author']);
      createdAt.value = jsonDate(payload['created_at']);
    });

    return true;
  }
}
