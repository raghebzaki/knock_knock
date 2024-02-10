import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:knockknock/features/auth/login/presentation/pages/login_view.dart';

import 'core/shared/cubits/internet_checker_cubit.dart';


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
      ],
      child: const Scaffold(
        body: LoginView(),
      ),
    );
  }
}