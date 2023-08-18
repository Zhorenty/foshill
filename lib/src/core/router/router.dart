import 'package:go_router/go_router.dart';

import '/main.dart';

/// Router of this application.
class AppRouter {
  final router = GoRouter(
    initialLocation: '/feed',
    routes: [
      GoRoute(
        path: '/feed',
        builder: (context, _) => const SampleScreen(),
      ),
    ],
  );
}
