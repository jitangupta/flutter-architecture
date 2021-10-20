import 'dart:convert';

import 'package:flutter_architecture/models/post.dart';
import 'package:http/http.dart' as http;

class PostService {
  //returns list of posts
  Future<List<Post>> getPosts(int? skipNumber, String searchTerm) async {
    final response = await http.get(Uri.parse(
        "https://jsonplaceholder.typicode.com/posts")); // ?skipNumber=$skipNumber&search=$searchTerm

    return List.from(json.decode(response.body))
        .map<Post>((post) => Post.fromMap(post))
        .toList();
  }
}
