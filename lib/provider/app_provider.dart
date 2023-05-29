import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:http/http.dart' as http;
import 'package:pro_sport/constants.dart';

class AppProvider {
  uri(String path) {
    return Uri.parse(dotenv.env['URL']! + path);
  }

  Future<bool> checkConnection() async {
    dynamic ur = uri('1');

    try {
      final http.Response response = await http.get(ur);

      if (response.statusCode == 200) return true;

      throw Exception();
    } catch (_) {
      Snack('Проверьте Internet подключение').error();

      return false;
    }
  }

  Map<String, String> headers() => {'Content-Type': 'application/json'};

  // Map<String, String> headersWithToken() => {
  //       'Content-Type': 'application/json',
  //       'Authorization': 'Bearer ${user.token.value}'
  //     };

  // Map<String, String> headerToken() =>
  //     {'Authorization': 'Bearer ${user.token.value}'};
}
