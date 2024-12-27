import 'package:flutter_bloc/flutter_bloc.dart';

class ProfileCubit extends Cubit<String> {
  ProfileCubit() : super('Samip');

  void updateProfile(String name) {
    emit(name);
  }
}
