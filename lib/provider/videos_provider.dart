import 'dart:convert';

import 'package:http/http.dart' as http;
import 'package:pro_sport/constants.dart';
import 'package:pro_sport/provider/app_provider.dart';
import 'package:pro_sport/store/videos.dart';

class VideosProvider extends AppProvider {
  final Videos videos = getIt.get<Videos>();

  Future<bool> fetch() async {
    if (!await checkConnection()) return false;

    try {
      final http.Response response = await http.get(
        uri('10'),
        // headers: headers(),
      );

      if (response.statusCode == 200) {
        videos.fromJson(json.decode(utf8.decode(response.bodyBytes)));
        return true;
      }

      throw Exception(response.statusCode);
    } catch (e) {
      print(e);

      return false;
    }
  }
}
