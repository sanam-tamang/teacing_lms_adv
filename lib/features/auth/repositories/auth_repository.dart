import 'package:teaching_lms_adv/core/services/api_service.dart';
import 'package:teaching_lms_adv/core/typedef/either.dart';

abstract class AuthRepository {
  FutureEither<String> login({required String email, required String password});
}

class AuthRepositoryImpl implements AuthRepository {
  final ApiService apiService;

  AuthRepositoryImpl({required this.apiService});
  @override
  FutureEither<String> login({
    required String email,
    required String password,
  }) async {
    return await apiService.post(
      "/login/",
      data: {},
      fromJson: (json) {
        return json['msg'];
      },
    );
  }
}
