import 'package:e_book/Feature/home/presentation/views/home_view.dart';
import 'package:go_router/go_router.dart';

import '../Feature/Splash/presentation/Views/splashView.dart';
import '../Feature/home/presentation/views/widget/BookDetailsViewBody.dart';

abstract class AppRouter {
  static final router = GoRouter(
    routes: [

      GoRoute(
          path: '/',
          builder: (context, state) => SplashView()
      ),
      GoRoute(
          path: '/homeView',
          builder: (context, state) => HomeView()
      ),
      GoRoute(
          path: '/BookDetails',
          builder: (context, state) => BookDetailsViewBody()
      )

    ],
  );
}
