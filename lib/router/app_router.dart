import 'package:flutter_boilerplate/app/config_page.dart';
import 'package:flutter_boilerplate/screens/home/home_page.dart';
import 'package:flutter_boilerplate/screens/login/view/login_page.dart';
import 'package:flutter_boilerplate/screens/splash/splash_screen.dart';
import 'package:go_router/go_router.dart';

class AppRouter {
  AppRouter._();

  static const String splash = '/';
  static const String login = '/login';
  static const String config = '/config';
  static const String home = '/home';

  static GoRouter get router => _router;
  static final _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        path: '/',
        builder: (context, state) => const SplashScreen(),
      ),
      GoRoute(
        path: '/home',
        builder: (context, state) => const HomePage(),
      ),
      GoRoute(
        path: config,
        builder: (context, state) => const ConfigPage(),
      ),
      GoRoute(
        path: login,
        builder: (context, state) => const LoginPage(),
      ),
    ],
  );
}
