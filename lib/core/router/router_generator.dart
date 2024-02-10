import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:knockknock/core/shared/models/user_data_model.dart';

import '../../main_view.dart';
import '../dependency_injection/di.dart' as di;
import '../shared/arguments.dart';
import 'router.dart';

class AppRouters {
  static Route routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      // case mainViewPageRoute:
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => const MainView(),
      //   );
      // case onBoardingPageRoute:
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => const OnBoardingView(),
      //   );
      //
      // /// Auth
      // case loginPageRoute:
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => const LoginView(),
      //   );
      // case registerPageRoute:
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => const RegisterView(),
      //   );
      // case verifyAccountPageRoute:
      //   final args = settings.arguments as VerifyAccountArgs;
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => VerifyAccountView(
      //       email: args.email,
      //     ),
      //   );
      // case forgotPassPageRoute:
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => const ForgotPassView(),
      //   );
      // case resetPassPageRoute:
      //   final args = settings.arguments as ResetPassArgs;
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => ResetPassView(
      //       email: args.email,
      //     ),
      //   );
      // case changePassPageRoute:
      //   final args = settings.arguments as ChangePassArgs;
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => ChangePassView(
      //       email: args.email,
      //     ),
      //   );
      // case changePassConfirmationPageRoute:
      //   return MaterialPageRoute(
      //     builder: (BuildContext context) => const ChangePassConfirmationView(),
      //   );
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => const MainView(),
        );

  }
  }
}
