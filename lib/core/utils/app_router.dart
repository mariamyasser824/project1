import 'package:booklyapp/featuers/home/presenation/views/screen_2.dart';
import 'package:booklyapp/featuers/home/presenation/views/screen_3.dart';
import 'package:booklyapp/featuers/splashscreen/views/splashscreen.dart';
import 'package:go_router/go_router.dart';

abstract class Approuter {
  static const homeViewRoute = '/homeView';
  static const bookDetailsViewRoute = '/bookDetailsview';

  static final router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const splash_screen(),
      ),
      GoRoute(
        path: homeViewRoute,
        builder: (context, state) => const screen_2(),
      ),
      GoRoute(
        path: bookDetailsViewRoute,
        builder: (context, state) => screen3(),
      ),
    ],
  );
}
