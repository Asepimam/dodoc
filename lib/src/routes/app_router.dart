enum AppRouter {
  auth(path: '/auth'),
  signIn(path: '/signIn'),
  signUp(path: '/signUp'),
  home(path: '/home'),
  profile(path: '/profile');

  final String path;
  const AppRouter({required this.path});

  String get name => nameMapping[this] ?? '';

  static const nameMapping = {
    AppRouter.auth: 'auth',
    AppRouter.signIn: 'signIn',
    AppRouter.signUp: 'signUp',
    AppRouter.home: 'home',
    AppRouter.profile: 'profile',
  };
}
