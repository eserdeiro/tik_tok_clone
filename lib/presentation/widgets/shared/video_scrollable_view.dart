 import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/videos_post.dart';
import 'package:tok_tik/presentation/widgets/shared/video_buttons.dart';
import 'package:tok_tik/presentation/widgets/video/fullscreen_player.dart';

 class VideoScrollableView extends StatelessWidget {

    final List<VideoPost> videos;

  const VideoScrollableView({
    super.key, 
    required this.videos
    });

  @override
  Widget build(BuildContext context) {
    return PageView.builder(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.vertical,
      itemCount: videos.length,
      itemBuilder: (context, index){
        final videoPost = videos[index];


        return  Stack(
          children: [
          //VideoPlayer + Gradient 
          SizedBox.expand(
            child: FullScreenPlayer(
              videoUrl: videoPost.videoUrl,
              caption: videoPost.caption,
            )
          ,),
          // Buttons
          Positioned(
            bottom: 40,
            right: 20,
            child: VideoButtons(video: videoPost)
            )
          ],
        );
      },
    );
  }
}