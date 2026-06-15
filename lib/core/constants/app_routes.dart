import 'package:flutter/material.dart';
import 'package:lahza/core/features/onboarding/presentation/screens/onboarding_screens.dart';
import 'package:lahza/core/features/splash/presentation/screens/splash_screen.dart';

abstract final class AppRoutes {
  static final GlobalKey<NavigatorState> navigatorKey =
      GlobalKey<NavigatorState>();

  static const String splash = '/';
  static const String onboarding = '/onboarding';
  static const String login = '/login';
  static const String register = '/register';
  static const String completeProfile = '/complete-profile';
  static const String otp = '/otp';
  static const String resetPassword = '/reset-password';
  static const String createNewPassword = '/create-new-password';
  static const String success = '/success';
  static const String home = '/home';
  static const String services = '/services';
  static const String orderDetails = '/order-details';
  static const String orderStatus = '/order-status';
  static const String inspectionResult = '/inspection-result';
  static const String payment = '/payment';

  static MaterialPageRoute<dynamic> onGenerateRoute(
    RouteSettings settings,
  ) {
    switch (settings.name) {
      case splash:
        return MaterialPageRoute(
          builder: (_) => const SplashScreen(),
        );

      case onboarding:
        return MaterialPageRoute(
          builder: (_) => const OnboardingScreen(),
        );

      // case login:
      //   return MaterialPageRoute(
      //     builder: (_) => const LoginView(),
      //   );

      default:
        return _undefinedRoute(settings.name);
    }
  }

  static MaterialPageRoute<dynamic> _undefinedRoute(
    String? routeName,
  ) {
    return MaterialPageRoute(
      builder: (_) => Scaffold(
        body: Center(
          child: Text(
            'No route defined for $routeName',
          ),
        ),
      ),
    );
  }
}