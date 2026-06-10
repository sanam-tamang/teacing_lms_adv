import 'package:teaching_lms_adv/core/services/api_service.dart';
import 'package:teaching_lms_adv/core/typedef/either.dart';
import 'package:teaching_lms_adv/features/trainer/models/trainer_info.dart';

abstract class TrainerRepository {
  FutureEither<String> applyForTrainer(TrainerInfo info);
}

class TrainerRepositoryI implements TrainerRepository {
  final ApiService apiService;

  TrainerRepositoryI({required this.apiService});
  @override
  FutureEither<String> applyForTrainer(TrainerInfo info) async {
    return await apiService.post(
      'trainer/apply',
      data: info.toMap(),
      fromJson: (json) {
        return "Trainer applied successful";
      },
    );
  }
}
