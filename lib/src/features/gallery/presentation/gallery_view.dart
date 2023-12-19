import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_with_bloc/src/bloc/router/router_bloc.dart';
import 'package:flutter_with_bloc/src/bloc/router/router_event.dart';
import 'package:flutter_with_bloc/src/bloc/router/router_state.dart';

import 'gallery_button.dart';

class GalleryView extends StatelessWidget {
  const GalleryView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<RouterController, RoutingState>(
        listener: (context, state) {
          final RoutingState routingState = state;
          switch (routingState) {
            case InCounterPageState():
              Navigator.of(context).pushNamed('/counter');
              break;
            case InTimerPageState():
              Navigator.of(context).pushNamed('/timer');
              break;
            case InInfiniteListPageState():
              Navigator.of(context).pushNamed('/infinite_list');
              break;
            default:
              break;
          }
        },
        child: Scaffold(
            appBar: AppBar(
              title: const Text('Feature Gallery'),
            ),
            body: Center(
                child: Stack(
              children: [
                Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      GalleryButton(
                          title: 'See counter',
                          routeEvent: NavigateToCounterPageEvent()),
                      GalleryButton(
                          title: 'See timer',
                          routeEvent: NavigateToTimerPageEvent()),
                      GalleryButton(
                          title: 'See infinite list',
                          routeEvent: NavigateToInfiniteListPageEvent()),
                    ]),
              ],
            ))));
  }
}
