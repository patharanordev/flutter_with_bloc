import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_with_bloc/src/bloc/app/app_observer.dart';
import 'package:flutter_with_bloc/src/splash/splash_page.dart';

void main() {
  Bloc.observer = const AppObserver();
  runApp(const SplashPage());
}
