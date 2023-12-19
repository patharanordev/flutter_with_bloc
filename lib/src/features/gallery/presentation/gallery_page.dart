import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_with_bloc/src/bloc/router/router_bloc.dart';
import 'package:flutter_with_bloc/src/features/gallery/presentation/gallery_view.dart';

class GalleryPage extends StatelessWidget {
  const GalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RouterController(),
      child: const GalleryView(),
    );
  }
}
