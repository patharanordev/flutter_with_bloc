import 'dart:async';
import 'dart:convert';

import 'package:poc_bloc/src/features/post/data/post_repository.dart';
import 'package:poc_bloc/src/features/post/domain/post.dart';
import 'package:http/http.dart' as http;

class HttpPostRepository implements PostBaseRepository {
  HttpPostRepository({required this.client});

  final http.Client client;

  @override
  Future<List<Post>> getPosts([int startIndex = 0, int postLimit = 20]) async {
    final response = await client.get(Uri.https(
      'jsonplaceholder.typicode.com',
      '/posts',
      <String, String>{'_start': '$startIndex', '_limit': '$postLimit'},
    ));

    if (response.statusCode == 200) {
      final body = json.decode(response.body) as List;
      return body.map((dynamic json) {
        final map = json as Map<String, dynamic>;
        return Post(
          id: map['id'] as int,
          title: map['title'] as String,
          body: map['body'] as String,
        );
      }).toList();
    }

    throw Exception('error fetching posts');
  }
}
