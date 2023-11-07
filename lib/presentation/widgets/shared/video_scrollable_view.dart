 import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/videos_post.dart';

 class VideoScrollableView extends StatelessWidget {

    final List<VideoPost> videos;

  const VideoScrollableView({
    super.key, 
    required this.videos
    });

  @override
  Widget build(BuildContext context) {
    return PageView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      children: [
        Container(
          color: Colors.red,
        ),
        Container(
          color: Colors.black,
        ),
        Container(
          color: Colors.blue,
        )
      ],
    );
  }
}