import 'package:tok_tik/domain/datasource/video_posts_datasource.dart';
import 'package:tok_tik/domain/entities/videos_post.dart';
import 'package:tok_tik/domain/repositories/video_posts_repository.dart';

class VideoPostsRepositoryImpl implements VideoPostRepository{

  final VideoPostsDatasource videosDatasource;

  VideoPostsRepositoryImpl({
    required this.videosDatasource
    });

  @override
  Future<List<VideoPost>> getFavoriteVideosByUser(int userID) {
  
    throw UnimplementedError();
  }

  @override
  Future<List<VideoPost>> getTrendingVideosByPage(int page) {

    return videosDatasource.getTrendingVideosByPage(page);

  }
}