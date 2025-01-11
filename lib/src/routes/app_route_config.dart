import 'package:go_router/go_router.dart';

import 'app_router.dart';
import "routes.dart";

class AppRouteConfig {
  GoRouter get router => _router;

  late final _router = GoRouter(
    initialLocation: AppRouter.auth.path,
    debugLogDiagnostics: true,
    routes: [
      GoRoute(
        path: AppRouter.auth.path,
        name: AppRouter.auth.name,
        builder: (context, state) => const AuthPage(),
        routes: [
          GoRoute(
            path: AppRouter.signIn.path, // Use relative path
            name: AppRouter.signIn.name,
            builder: (context, state) => const SigninPage(),
          ),
          GoRoute(
            path: AppRouter.signUp.path, // Use relative path
            name: AppRouter.signUp.name,
            builder: (context, state) => const SignupPage(),
          ),
        ],
      ),
      // GoRoute(
      //   path: AppRouter.home.path,
      //   name: AppRouter.home.name,
      //   builder: (context, state) => const HomePage(),
      // ),
      // GoRoute(
      //   path: AppRouter.profile.path,
      //   name: AppRouter.profile.name,
      //   builder: (context, state) => const ProfilePage(),
      // ),
    ],
  );
}
