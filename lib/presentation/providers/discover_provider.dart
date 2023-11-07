 import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/videos_post.dart';
import 'package:tok_tik/infrastructure/models/local_video_models.dart';
import 'package:tok_tik/shared/data/local_video_posts.dart';

class DiscoverProvider extends ChangeNotifier{

bool initialLoading = true;
List<VideoPost> videos = [ ];

Future<void> loadNextPage() async {
  print('Esto nunca se imprime ');

await Future.delayed(const Duration(microseconds: 100));

//Convert List<Map<String, dynamic>> to List<VideoPost>

final List<VideoPost> newVideos = videoPosts.map(
  (video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
  .toList();

videos.addAll(newVideos);
initialLoading = false;
notifyListeners();
print('Esto tampoco ${videos[0].caption}');
}

 }