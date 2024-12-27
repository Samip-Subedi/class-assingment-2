import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../view/simple_interest_view.dart';
import '../view/area_of_circle_view.dart';
import '../view/profile_view.dart';
import 'simple_interest_cubit.dart';
import 'area_of_circle_cubit.dart';
import 'profile_cubit.dart';

class DashboardCubit extends Cubit<void> {
  DashboardCubit(
      this._simpleInterestCubit,
      this._areaOfCircleCubit,
      this._profileCubit,
      ) : super(null);

  final SimpleInterestCubit _simpleInterestCubit;
  final AreaOfCircleCubit _areaOfCircleCubit;
  final ProfileCubit _profileCubit;

  void openSimpleInterestView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _simpleInterestCubit,
          child: const SimpleInterestView(),
        ),
      ),
    );
  }

  void openAreaOfCircleView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _areaOfCircleCubit,
          child: const AreaOfCircleView(),
        ),
      ),
    );
  }

  void openProfileView(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) => BlocProvider.value(
          value: _profileCubit,
          child: const ProfileView(),
        ),
      ),
    );
  }
}
