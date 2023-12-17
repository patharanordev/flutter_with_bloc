import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:poc_bloc/src/features/gallery/application/feature_gallery_app.dart';
import 'package:poc_bloc/src/bloc/app/app_observer.dart';

void main() {
  Bloc.observer = const AppObserver();
  runApp(const FeatureGalleryApp());
}
