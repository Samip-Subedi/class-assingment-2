import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../cubit/profile_cubit.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    final profileCubit = context.read<ProfileCubit>();
    return Scaffold(
      appBar: AppBar(
        title: const Text('Samip Class Assignment'),
        centerTitle: true,
      ),
      body: BlocBuilder<ProfileCubit, String>(
        builder: (context, profileName) {
          return Center(
            child: Text('Profile Name: $profileName'),
          );
        },
      ),
    );
  }
}

