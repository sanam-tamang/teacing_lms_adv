import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teaching_lms_adv/core/error/failure.dart';
import 'package:teaching_lms_adv/features/auth/repositories/auth_repository.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthRepository authRepository;
  LoginBloc({required this.authRepository}) : super(LoginState.initial()) {
    on<_Login>(_onLoginEvent);
  }

  Future<void> _onLoginEvent(_Login event, Emitter<LoginState> emit) async {
    emit(LoginState.loading());

    final result = await authRepository.login(
      email: event.email,
      password: event.password,
    );
    result.fold(
      (f) => emit(LoginState.failure(f)),
      (msg) => emit(LoginState.loaded(msg)),
    );
  }
}
