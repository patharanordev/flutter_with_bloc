import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import 'package:flutter_with_bloc/src/bloc/post/post_bloc.dart';
import 'package:flutter_with_bloc/src/features/counter/presentation/counter_page.dart';
import 'package:flutter_with_bloc/src/features/post/presentation/post_infinite_page.dart';
import 'package:flutter_with_bloc/src/features/timer/presentation/timer_page.dart';
import 'package:flutter_with_bloc/src/features/gallery/presentation/gallery_page.dart';

import 'package:flutter_with_bloc/src/bloc/counter/counter_state.dart';
import 'package:flutter_with_bloc/src/bloc/timer/timer_bloc.dart';
import 'package:flutter_with_bloc/src/features/timer/presentation/ticker.dart';

class FeatureGalleryApp extends StatelessWidget {
  const FeatureGalleryApp({Key? key}) : super(key: key);

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
      initialRoute: '/',
      routes: {
        '/counter': (context) => const CounterPage(),
        '/timer': (context) => const TimerPage(),
        '/infinite_list': (context) => const PostInfinitePage(),
        '/': (context) => const GalleryPage()
      },
    );
  }
}
