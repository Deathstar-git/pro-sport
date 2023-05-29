import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:go_router/go_router.dart';
import 'package:pro_sport/constants.dart';
import 'package:pro_sport/store/videos.dart';
import 'package:pro_sport/ui/widgets/blocks/body.dart';

class ActivityScreen extends StatelessWidget {
  final String? id;
  const ActivityScreen({Key? key, this.id}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String activityName = activity[id ?? 'home'];
    Videos videos = getIt.get<Videos>();

    videos.fetch();

    return Scaffold(
      appBar: AppBar(title: Text(activityName)),
      body: Body(
        store: videos,
        children: [
          Center(
            child: Observer(
              builder: (context) => Column(
                children: [
                  ...videos.all.map((e) => Text(e.idName())),
                  Space.v20,
                  ElevatedButton(
                    onPressed: () => context.goNamed('home'),
                    child: const Text('На главную'),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
