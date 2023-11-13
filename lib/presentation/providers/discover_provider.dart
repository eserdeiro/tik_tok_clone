import 'package:flutter/material.dart';
import 'package:tok_tik/domain/entities/videos_post.dart';
import 'package:tok_tik/domain/repositories/video_posts_repository.dart';

class DiscoverProvider extends ChangeNotifier {
  final VideoPostRepository videosRepository;

  bool initialLoading = true;
  List<VideoPost> videos = [];

  DiscoverProvider({required this.videosRepository});

  Future<void> loadNextPage() async {
    await Future.delayed(const Duration(microseconds: 100));

//Convert List<Map<String, dynamic>> to List<VideoPost>

// final List<VideoPost> newVideos = videoPosts.map(
//   (video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
//   .toList();

    final newVideos = await videosRepository.getTrendingVideosByPage(1);

    videos.addAll(newVideos);
    initialLoading = false;
    notifyListeners();
  }
}
