import 'package:teaching_lms_adv/core/services/api_service.dart';
import 'package:teaching_lms_adv/core/typedef/either.dart';
import 'package:teaching_lms_adv/features/profile/models/user_profile.dart';

abstract class ProfileRepository {
  FutureEither<UserModel> getUser();
}

class ProfileRepositoryImpl implements ProfileRepository {
  final ApiService _apiService;

  ProfileRepositoryImpl({required ApiService apiService})
    : _apiService = apiService;
  @override
  FutureEither<UserModel> getUser() async {
    return await _apiService.get(
      'profile/me',
      fromJson: (map) {
        return UserModel.fromMap(map);
      },
    );
  }
}
