import 'package:dio/dio.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get_it/get_it.dart';
import 'package:teaching_lms_adv/core/blocs/gate_keeper/gate_keeper_cubit.dart';
import 'package:teaching_lms_adv/core/network/api_url.dart';
import 'package:teaching_lms_adv/core/network/dio_client.dart';
import 'package:teaching_lms_adv/core/services/api_service.dart';
import 'package:teaching_lms_adv/core/storage/token_storage.dart';
import 'package:teaching_lms_adv/features/auth/blocs/login/login_bloc.dart';
import 'package:teaching_lms_adv/features/auth/repositories/auth_repository.dart';
import 'package:teaching_lms_adv/features/profile/blocs/profile/profile_bloc.dart';
import 'package:teaching_lms_adv/features/profile/repositories/profile_repository.dart';
import 'package:teaching_lms_adv/features/trainer/blocs/apply_for_trainer/apply_for_trainer_bloc.dart';
import 'package:teaching_lms_adv/features/trainer/repositories/trainer_repository.dart';

final sl = GetIt.instance;

void init() {
  //bloc

  sl.registerLazySingleton(() => LoginBloc(repo: sl()));
  sl.registerLazySingleton(() => GateKeeperCubit(sl()));
  sl.registerLazySingleton(() => ProfileBloc(sl()));
  sl.registerLazySingleton(() => ApplyForTrainerBloc(repo: sl()));

  //repo
  sl.registerLazySingleton<AuthRepository>(
    () => AuthRepositoryImpl(apiService: sl(), tokenStorageService: sl()),
  );

  sl.registerLazySingleton<ProfileRepository>(
    () => ProfileRepositoryImpl(apiService: sl()),
  );

    sl.registerLazySingleton<TrainerRepository>(
    () => TrainerRepositoryI(apiService: sl()),
  );

  //core

  sl.registerLazySingleton(() => TokenStorageService(sl()));

  sl.registerLazySingleton(() => ApiService(sl()));

  sl.registerLazySingleton(() => DioClient(sl(), sl()));

  sl.registerLazySingleton(() => Dio(BaseOptions(baseUrl: kBaseUrl)));
  sl.registerLazySingleton(
    () => AuthTokenInterceptor(tokenStorageService: sl()),
  );

  sl.registerLazySingleton(() => FlutterSecureStorage());
}
