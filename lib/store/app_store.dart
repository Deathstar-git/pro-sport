import 'package:mobx/mobx.dart';

abstract class AppStore {
  final isLoading = false.obs();
  final isChanged = false.obs();

  void loadToggle() => runInAction(() => isLoading.value = !isLoading.value);
  void changeToggle() => runInAction(() => isChanged.value = !isChanged.value);

  void setChanged(bool payload) => runInAction(() => isChanged.value = payload);

  Future<bool> callApi(Future<bool> dataFromApi) async {
    try {
      loadToggle();

      if (await dataFromApi) {
        return true;
      }

      throw Exception('');
    } catch (_) {
      return false;
    } finally {
      loadToggle();
    }
  }

  bool isContain(dynamic field, dynamic search) {
    return field.toString().toLowerCase().contains(search.value.toLowerCase());
  }

  int jsonInt(dynamic payload) {
    if (payload is int) {
      return payload;
    } else if (payload is String) {
      return int.tryParse(payload) ?? 0;
    } else {
      return 0;
    }
  }

  double jsonDouble(dynamic payload) {
    if (payload is double) {
      return payload;
    } else if (payload is String) {
      return double.tryParse(payload) ?? 0.0;
    } else {
      return 0.0;
    }
  }

  String jsonString(dynamic payload) => payload ?? '';

  bool jsonBool(dynamic payload) => payload ?? false;

  DateTime jsonDate(dynamic payload) =>
      DateTime.tryParse(payload ?? '') ?? DateTime.now();

  int lengthPhoto(List payload) =>
      payload.where((item) => item.photo.value != '').toList().length;
}
