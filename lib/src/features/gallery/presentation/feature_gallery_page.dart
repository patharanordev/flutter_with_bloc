import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poc_bloc/src/bloc/router/router_bloc.dart';
import 'package:poc_bloc/src/features/gallery/presentation/feature_gallery_view.dart';

class FeatureGalleryPage extends StatelessWidget {
  const FeatureGalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => RouterController(),
      child: const FeatureGalleryView(),
    );
  }
}
