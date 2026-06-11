import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teaching_lms_adv/core/blocs/exports.dart';
import 'package:teaching_lms_adv/features/trainer/models/trainer_info.dart';
import 'package:teaching_lms_adv/features/trainer/repositories/trainer_repository.dart';

part 'apply_for_trainer_event.dart';
part 'apply_for_trainer_state.dart';
part 'apply_for_trainer_bloc.freezed.dart';

class ApplyForTrainerBloc
    extends Bloc<ApplyForTrainerEvent, ApplyForTrainerState> {
      final TrainerRepository repo;
  ApplyForTrainerBloc( {required this.repo}) : super(ApplyForTrainerState.initial()) {
    on<_Apply>(_onApply);
  }

  Future<void> _onApply(
    _Apply event,
    Emitter<ApplyForTrainerState> emit,
  ) async {}
}
