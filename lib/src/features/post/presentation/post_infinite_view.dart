import 'package:flutter/material.dart';
import 'post_list.dart';

class PostInfiniteView extends StatelessWidget {
  const PostInfiniteView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Feature Infinite List')),
      body: const PostInfiniteList(),
    );
  }
}
