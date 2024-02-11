import 'package:flutter/material.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/features/main/home/presentation/pages/home_view.dart';
import 'package:knockknock/features/main/products/presentation/pages/products_view.dart';
import 'package:knockknock/features/main/products_details/presentation/pages/products_details_view.dart';
import 'package:knockknock/features/main/services/presentation/pages/services_view.dart';
import 'package:knockknock/features/main/services_details/presentation/pages/services_details_view.dart';

import '../../features/auth/change_pass/presentation/pages/change_pass_view.dart';
import '../../features/auth/forgot_pass/presentation/pages/forgot_pass_view.dart';
import '../../features/auth/login/presentation/pages/login_view.dart';
import '../../features/auth/register/presentation/pages/register_view.dart';
import '../../features/auth/reset_pass/presentation/pages/reset_pass_view.dart';
import '../../features/auth/verify_account/presentation/pages/verify_account_view.dart';
import '../../features/on_boarding/presentation/pages/on_boarding_view.dart';
import '../../main_view.dart';
import '../shared/arguments.dart';

class AppRouters {
  static Route routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case mainViewPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const MainView(),
        );
      case onBoardingPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const OnBoardingView(),
        );

      /// Auth
      case loginPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LoginView(),
        );
      case registerPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const RegisterView(),
        );
      case verifyAccountPageRoute:
        final args = settings.arguments as VerifyAccountArgs;
        return MaterialPageRoute(
          builder: (BuildContext context) => VerifyAccountView(
            email: args.email,
          ),
        );
      case forgotPassPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ForgotPassView(),
        );
      case resetPassPageRoute:
        final args = settings.arguments as ResetPassArgs;
        return MaterialPageRoute(
          builder: (BuildContext context) => ResetPassView(
            email: args.email,
          ),
        );
      case changePassPageRoute:
        final args = settings.arguments as ChangePassArgs;
        return MaterialPageRoute(
          builder: (BuildContext context) => ChangePassView(
            email: args.email,
          ),
        );

        /// main
      case homePageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HomeView(),
        );
        case productsPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ProductsView(),
        );
        case productsDetailsPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ProductsDetailsView(),
        );
            case servicesPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ServicesView(),
        );
        case servicesDetailsPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ServicesDetailsView(),
        );
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => const MainView(),
        );

  }
  }
}
