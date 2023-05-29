import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';

class VideoScreen extends StatelessWidget {
  final String? url;

  /// Constructs a [DetailsScreen]
  const VideoScreen({this.url, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIMode(SystemUiMode.manual, overlays: []);

    return WillPopScope(
      onWillPop: () async {
        SystemChrome.setEnabledSystemUIMode(
          SystemUiMode.manual,
          overlays: [SystemUiOverlay.top, SystemUiOverlay.bottom],
        );

        return true;
      },
      child: Scaffold(
        body: Container(
          color: Colors.black,
          child: Center(
            child: InAppWebView(
              initialUrlRequest: URLRequest(url: Uri.parse(url!)),
            ),
          ),
        ),
      ),
    );
  }
}
