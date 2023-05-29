import 'package:flutter/material.dart';
import 'package:pro_sport/constants.dart';
import 'package:pro_sport/store/video.dart';

class VideoCard extends StatelessWidget {
  final Video video;

  const VideoCard({required this.video, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(children: [
        Picture(url: video.picture.value),
        Space.v10,
        Text(
          video.name.value,
          style: Theme.of(context).textTheme.bodyLarge,
        ),
        Space.v10,
        Center(
          child: Text(
            video.description.value,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
        ),
        Space.v10,
        Text(
          'Автор: ${video.author.value}',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        Space.v10,
        Divider(),
        Space.v10,
      ]),
    );
  }
}

class Picture extends StatelessWidget {
  final String url;

  const Picture({required this.url, super.key});

  @override
  Widget build(BuildContext context) {
    try {
      return ClipRRect(
        borderRadius: BorderRadius.circular(10.0),
        child: Image.network(
          url,
          errorBuilder:
              (BuildContext context, Object exception, StackTrace? stackTrace) {
            return Container();
          },
        ),
      );
    } catch (e) {
      print(e);

      return Container();
    }
  }
}
