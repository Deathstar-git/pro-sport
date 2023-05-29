import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:pro_sport/ui/screens/activity_screen.dart';
import 'package:pro_sport/ui/screens/home_screen.dart';
import 'package:pro_sport/ui/screens/video_screen.dart';

final GoRouter router = GoRouter(
  routes: <RouteBase>[
    GoRoute(
      name: 'home',
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const HomeScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          name: 'video',
          path: 'video/:id',
          builder: (BuildContext context, GoRouterState state) {
            return VideoScreen(url: state.params['id']);
          },
        ),
        GoRoute(
          name: 'activity',
          path: 'activity/:id',
          builder: (BuildContext context, GoRouterState state) {
            return ActivityScreen(id: state.params['id']);
          },
        ),
      ],
    ),
  ],
);
