import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:poc_bloc/src/bloc/router/router_bloc.dart';
import 'package:poc_bloc/src/bloc/router/router_event.dart';

class FeatureGalleryButton extends StatelessWidget {
  const FeatureGalleryButton(
      {super.key, required this.title, required this.routeEvent});

  final String title;
  final RoutingEvent routeEvent;

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.fromLTRB(10.0, 10.0, 10.0, 0.0),
        child: SizedBox(
            height: 48.0,
            width: double.infinity,
            child: ElevatedButton(
              child: Text(title),
              onPressed: () {
                context.read<RouterController>().add(routeEvent);
              },
            )));
  }
}
