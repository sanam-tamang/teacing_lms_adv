
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teaching_lms_adv/core/blocs/exports.dart';

import 'package:teaching_lms_adv/features/auth/repositories/auth_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';



class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository _repo;
  LoginBloc({required AuthRepository repo}) : _repo = repo,  super(LoginState.initial()) {
    on<_Login>(_onLoginEvent);
  }

  Future<void> _onLoginEvent(_Login event, Emitter<LoginState> emit) async {
    emit(LoginState.loading());

    final result = await _repo.login(
      email: event.email,
      password: event.password,
    );
    result.fold(
      (f) => emit(LoginState.failure(f)),
      (msg) => emit(LoginState.loaded(msg)),
    );
  }
}
