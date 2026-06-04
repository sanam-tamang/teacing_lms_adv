import 'package:flutter/widgets.dart';
import 'package:teaching_lms_adv/core/error/failure.dart';
import 'package:teaching_lms_adv/core/widgets/app_text.dart';

class ShowErrorMessage extends StatelessWidget {
  const ShowErrorMessage({super.key, required this.failure});
  final Failure failure;
  @override
  Widget build(BuildContext context) {
    return AppText(failure.message);
  }
}
