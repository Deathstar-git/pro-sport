import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:pro_sport/constants.dart';
import 'package:pro_sport/store/videos.dart';
import 'package:pro_sport/ui/screens/_card.dart';
import 'package:pro_sport/ui/widgets/blocks/body.dart';
import 'package:pro_sport/ui/widgets/drawer.dart';

class HomeScreen extends StatelessWidget {
  /// Constructs a [HomeScreen]
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Videos videos = getIt.get<Videos>();
    videos.fetch();

    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
        appBar: AppBar(title: const Text('Pro Sport')),
        drawer: const AppDrawer(),
        body: Body(
          store: videos,
          refresh: () async => await videos.fetch(),
          children: [
            Observer(
              builder: (context) => Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Space.v5,
                  ...videos.all.map((e) => VideoCard(video: e)),
                  Space.v5,
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
