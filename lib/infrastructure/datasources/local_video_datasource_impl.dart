
import 'package:tok_tik/domain/datasource/video_posts_datasource.dart';
import 'package:tok_tik/domain/entities/videos_post.dart';
import 'package:tok_tik/infrastructure/models/local_video_models.dart';
import 'package:tok_tik/shared/data/local_video_posts.dart';

class LocalVideoDatasource implements VideoPostsDatasource{
  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(int userID) {
 
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) async{
 
    await Future.delayed(const Duration(seconds: 2));

    final List<VideoPost> newVideos = videoPosts.map(
  (video) => LocalVideoModel.fromJson(video).toVideoPostEntity())
  .toList();

  return newVideos;
  
  }

}