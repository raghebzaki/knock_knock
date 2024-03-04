import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'core/dependency_injection/di.dart' as di;
import 'core/helpers/cache_helper.dart';
import 'core/resources/api/data_sources.dart';
import 'core/router/router.dart';
import 'core/service/delivery_cost.dart';
import 'core/service/get_balance.dart';
import 'core/shared/arguments.dart';
import 'core/shared/cubits/internet_checker_cubit.dart';
import 'core/shared/widgets/state_error_widget.dart';
import 'core/utils/app_colors.dart';
import 'core/utils/app_images.dart';
import 'features/auth/login/domain/entities/login_entity.dart';
import 'features/auth/login/presentation/manager/login_cubit.dart';
import 'generated/l10n.dart';


class MainView extends StatefulWidget {
  const MainView({super.key});

  @override
  State<MainView> createState() => _MainViewState();
}

class _MainViewState extends State<MainView> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => InternetCubit(),
        ),
        BlocProvider(
          create: (context) => di.di<LoginCubit>(),
        ),
      ],
      child: BlocConsumer<InternetCubit, InternetStates>(
        listener: (context, state) {
          if (state == InternetStates.gained) {
            checkRememberMe(context);
          } else if (state == InternetStates.lost) {
            context.defaultSnackBar(
              "No Internet Connection",
              color: AppColors.errorColor,
            );
          }
        },
        builder: (context, state) {
          return state == InternetStates.gained
              ? BlocConsumer<LoginCubit, LoginStates>(
            listener: (context, state) {
              LoginCubit loginCubit = LoginCubit.get(context);

              state.maybeWhen(
                // initial: () async {
                //   var email =
                //       await CacheHelper.getData("email") ?? "";
                //   var pass =
                //       await CacheHelper.getData("pass") ?? "";
                //   if (email == null && pass == null || email == "" && pass == "") {
                //     return null;
                //   } else {
                //     // loginCubit.userLogin();
                //   }
                // },
                success: (state) async {
                  var email = await CacheHelper.getData("email");
                  // var pass = await CacheHelper.getData("pass");
                  if (state!.status == 1) {
                    if (context.mounted) {
                      context.defaultSnackBar(
                          S.of(context).loginSuccessful);
                    }
                      if (context.mounted) {
                        context.pushNamed(bottomNavBarPageRoute);
                      }
                    DeliveryCostService.deleteUserAccount();
                    UserBalanceService.getBalance();

                    // UpdateFcmTokenService.updateUserToken(UserData.id!);
                  } else if (state.status == 0) {
                    if (state.msg ==
                        "Active your account first verification code sent to your email !") {
                      // await resendCodeUseCase(email.ifEmpty());
                      loginCubit.resendCode(email);
                      if (context.mounted) {
                        context.pushNamed(
                          verifyAccountPageRoute,
                          arguments: VerifyAccountArgs(email: email),
                        );
                      }
                    }
                    if (context.mounted) {
                      context.defaultSnackBar(state.msg!);
                      context.pushNamed(loginPageRoute);
                    }
                  } else {
                    if (context.mounted) {
                      context.defaultSnackBar(state.msg!);
                      context.pushNamed(loginPageRoute);
                    }
                  }
                },
                error: (errCode, err) {
                  context.defaultSnackBar(
                      "${S.current.err_code}: $errCode, $err");
                  context.pushNamed(loginPageRoute);
                },
                orElse: () {
                  return null;
                },
              );
            },
            builder: (context, state) {
              return Scaffold(
                body: Center(
                  child: Image.asset(AppImages.appLogo),
                ),
              );
            },
          )
              : Scaffold(
            body: StateErrorWidget(
              errCode: S.of(context).noInternetConnection,
              err: DataSource.noInternetConnection.toString(),
            ),
          );
        },
      ),
    );
  }
}
checkRememberMe(BuildContext context) async {
  var email = await CacheHelper.getData("email");
  var pass = await CacheHelper.getData("pass");

  if (context.mounted) {
    LoginCubit loginCubit = LoginCubit.get(context);
    if (email == null && pass == null) {
      context.pushNamed(loginPageRoute);
    } else {
      loginCubit.userLogin(
        LoginEntity(
          userName: email,
          pass: pass,
        ),
      );
    }
  }
}