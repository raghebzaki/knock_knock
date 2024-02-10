import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
<<<<<<< HEAD
import 'package:knockknock/features/home/presentation/pages/home_view.dart';
=======
import 'package:knockknock/features/auth/login/presentation/pages/login_view.dart';
>>>>>>> master

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
<<<<<<< HEAD
      child: HomeView(),
=======
      child: const Scaffold(
        body: LoginView(),
      ),
>>>>>>> master
    );
  }
}