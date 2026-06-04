// ignore_for_file: public_member_api_docs, sort_constructors_first

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:teaching_lms_adv/core/error/failure.dart';
import 'package:teaching_lms_adv/features/profile/models/user_profile.dart';
import 'package:teaching_lms_adv/features/profile/repositories/profile_repository.dart';

part 'profile_bloc.freezed.dart';
part 'profile_event.dart';
part 'profile_state.dart';

class ProfileBloc extends Bloc<ProfileEvent, ProfileState> {
  final ProfileRepository _profileRepository;
  ProfileBloc(this._profileRepository) : super(_Initial()) {
    on<_Get>(_onGet);
  }

  Future<void> _onGet(_Get event, Emitter<ProfileState> emit) async {
    final result = await _profileRepository.getUser();
    result.fold(
      (l) => emit(ProfileState.failure(l)),
      (r) => emit(ProfileState.loaded(r)),
    );
  }
}
