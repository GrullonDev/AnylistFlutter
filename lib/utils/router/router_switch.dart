import 'package:flutter/material.dart';

import 'package:anylist/features/auth/login/page/login_page.dart';
import 'package:anylist/features/auth/register/pages/register_page.dart';
import 'package:anylist/features/dashboard/page/dashboard_page.dart';
import 'package:anylist/utils/router/router_path.dart';
import 'package:anylist/utils/views/unknow_view.dart';

class AppRouter {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    Widget? page;
    String name = settings.name ?? '';

    switch (name) {
      case RoutePaths.login:
        page = const LoginPage();

      case RoutePaths.register:
        page = const RegisterPage();

      case RoutePaths.dashboard:
        page = const DashboardPage();

      default:
        page = UnknowView(name);
    }
    return _getPageRoute(name, page, settings.arguments);
  }

    static PageRoute _getPageRoute(
    String routeName,
    dynamic viewToShow,
    Object? args,
  ) {
    // sl<GoogleAnalytics>().setScreenName(routeName);
    return MaterialPageRoute(
      settings: RouteSettings(
        name: routeName,
        arguments: args,
      ),
      builder: (_) => viewToShow,
    );
  }

/*   static PageRoute _getPageRouteMap(
    String routeName,
    dynamic viewToShow,
    Object? args,
  ) {
    // sl<GoogleAnalytics>().setScreenName(routeName);
    return MaterialPageRoute<Map<String, dynamic>>(
      settings: RouteSettings(
        name: routeName,
        arguments: args,
      ),
      builder: (_) => viewToShow,
    );
  }

  // Valida use because it call dispose navigation to a new page
  static PageRoute _fadeRoute(
    String routeName,
    dynamic viewToShow,
    Object? args,
  ) {
    // sl<GoogleAnalytics>().setScreenName(routeName);
    return FadeTransitionRoute(
      settings: RouteSettings(
        name: routeName,
        arguments: args,
      ),
      page: viewToShow,
    );
  } */
/*   static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case login:
        return MaterialPageRoute(builder: (_) => const LoginPage());
      case register:
        return MaterialPageRoute(builder: (_) => const RegisterPage());
      case dashboard:
        return MaterialPageRoute(builder: (_) => const DashboardPage());
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text('No route defined for ${settings.name}'),
            ),
          ),
        );
    }
  } */
}
