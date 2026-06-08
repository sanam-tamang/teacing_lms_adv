import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teaching_lms_adv/core/blocs/gate_keeper/gate_keeper_cubit.dart';
import 'package:teaching_lms_adv/core/di/depedency_injection%5D.dart';
import 'package:teaching_lms_adv/core/routes/router.dart';
import 'package:teaching_lms_adv/core/theme/theme_mode.dart';
import 'package:teaching_lms_adv/features/auth/blocs/login/login_bloc.dart';
import 'package:teaching_lms_adv/features/profile/blocs/profile/profile_bloc.dart';

void main() {
  init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => sl<LoginBloc>()),
        BlocProvider(create: (context) => sl<GateKeeperCubit>()),
        BlocProvider(create: (context) => sl<ProfileBloc>()),
      ],
      child: MaterialApp.router(
        title: 'LMS Teaching ADV',
        debugShowCheckedModeBanner: false,
        theme: AppThemeMode.lightTheme(context),
        darkTheme: AppThemeMode.darkTheme(context),
        themeMode: ThemeMode.system,
        routerConfig: AppRoute.router,
      ),
    );
  }
}
