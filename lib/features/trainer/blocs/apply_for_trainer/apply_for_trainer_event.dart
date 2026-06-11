part of 'apply_for_trainer_bloc.dart';

@freezed
abstract class ApplyForTrainerEvent with _$ApplyForTrainerEvent {
  const factory ApplyForTrainerEvent.apply(TrainerInfo info) = _Apply;
}
