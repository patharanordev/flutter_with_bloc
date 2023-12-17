import 'package:flutter/material.dart';

class PostBottomLoader extends StatelessWidget {
  const PostBottomLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: SizedBox(
      height: 24,
      width: 24,
      child: CircularProgressIndicator(strokeWidth: 1.5),
    ));
  }
}
