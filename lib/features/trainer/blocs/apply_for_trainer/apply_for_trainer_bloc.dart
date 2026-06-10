import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:teaching_lms_adv/core/blocs/exports.dart';

part 'apply_for_trainer_event.dart';
part 'apply_for_trainer_state.dart';
part 'apply_for_trainer_bloc.freezed.dart';

class ApplyForTrainerBloc
    extends Bloc<ApplyForTrainerEvent, ApplyForTrainerState> {
  ApplyForTrainerBloc() : super(ApplyForTrainerState.initial()) {
    on<ApplyForTrainerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
