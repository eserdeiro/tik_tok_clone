import 'package:tok_tik/domain/entities/videos_post.dart';

abstract class VideoPostRepository{

  Future<List<VideoPost>> getFavoriteVideosByUser (int userID);

  Future<List<VideoPost>> getTrendingVideosByPage (int page);


}