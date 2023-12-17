import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:poc_bloc/src/bloc/post/post_bloc.dart';
import 'package:poc_bloc/src/features/counter/presentation/counter_page.dart';
import 'package:poc_bloc/src/features/post/presentation/post_infinite_page.dart';
import 'package:poc_bloc/src/features/timer/presentation/timer_page.dart';
import 'package:poc_bloc/src/features/gallery/presentation/feature_gallery_page.dart';

import 'package:poc_bloc/src/bloc/counter/counter_state.dart';
import 'package:poc_bloc/src/bloc/timer/timer_bloc.dart';
import 'package:poc_bloc/src/features/timer/presentation/ticker.dart';
import 'package:poc_bloc/src/splash/splash_page.dart';

class FeatureGalleryApp extends StatelessWidget {
  const FeatureGalleryApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      builder: (context, child) {
        return MultiBlocProvider(providers: [
          BlocProvider<CounterState>(create: (context) => CounterState()),
          BlocProvider<TimerController>(
              create: (context) => TimerController(ticker: const Ticker())),
          BlocProvider<PostBloc>(
              create: (context) =>
                  PostBloc(client: http.Client())..add(PostFetched()))
        ], child: child!);
      },
      initialRoute: '/splash',
      routes: {
        '/counter': (context) => const CounterPage(),
        '/timer': (context) => const TimerPage(),
        '/infinite_list': (context) => const PostInfinitePage(),
        '/': (context) => const FeatureGalleryPage()
      },
      onGenerateRoute: (routes) {
        if (routes.name == '/splash') {
          return MaterialPageRoute(
            builder: (context) {
              return FutureBuilder(
                  future: Future.delayed(const Duration(seconds: 2)),
                  builder: (context, snapshot) {
                    if (snapshot.connectionState == ConnectionState.waiting) {
                      // While waiting, you can display a loading indicator or splash screen
                      return const SplashPage();
                    } else {
                      // After the delay, navigate to the desired screen
                      return const FeatureGalleryPage();
                    }
                  });
            },
          );
        }
        return null;
      },
    );
  }
}
