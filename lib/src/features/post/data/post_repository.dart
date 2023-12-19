import 'package:flutter_with_bloc/src/features/post/data/repository/http_post_repository.dart';
import 'package:flutter_with_bloc/src/features/post/domain/post.dart';

abstract class PostBaseRepository {
  Future<List<Post>> getPosts([int startIndex = 0, int postLimit = 20]);
}

class PostRepository implements PostBaseRepository {
  PostRepository({required client}) {
    if (_isAcceptedRuntimeType(client)) {
      repository = HttpPostRepository(client: client);
    } else {
      print(
          'In PostRepository, unknown client: ${client.runtimeType.toString()}');
    }
  }

  late PostBaseRepository? repository;

  _isAcceptedRuntimeType(dynamic client) {
    // http.Client can be:
    // - BrowserClient when run on web platform.
    // - IOClient when run on Android platform.
    return ['Client', 'http.Client', 'IOClient', 'BrowserClient']
        .contains(client.runtimeType.toString());
  }

  @override
  Future<List<Post>> getPosts([int startIndex = 0, int postLimit = 20]) async {
    return await repository?.getPosts(startIndex, postLimit) ?? [];
  }
}
