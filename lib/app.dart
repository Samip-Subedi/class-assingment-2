import 'package:flutter/material.dart';
import 'cubit/dashboard_cubit.dart';
import 'cubit/simple_interest_cubit.dart';
import 'cubit/area_of_circle_cubit.dart';
import 'cubit/profile_cubit.dart';
import 'view/dashboard_view.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => SimpleInterestCubit()),
        BlocProvider(create: (context) => AreaOfCircleCubit()),
        BlocProvider(create: (context) => ProfileCubit()),
        BlocProvider(
          create: (context) => DashboardCubit(
            context.read<SimpleInterestCubit>(),
            context.read<AreaOfCircleCubit>(),
            context.read<ProfileCubit>(),
          )
        )
      ],
      child: MaterialApp(
        title: 'Samip Class Assignment',
        home:  DashboardView(),
      ),
    );
  }
}
