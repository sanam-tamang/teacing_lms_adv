import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:go_router/go_router.dart';
import 'package:teaching_lms_adv/core/blocs/exports.dart';
import 'package:teaching_lms_adv/core/routes/route_name.dart';
import 'package:teaching_lms_adv/core/widgets/app_text.dart';
import 'package:teaching_lms_adv/core/widgets/buttons.dart';
import 'package:teaching_lms_adv/features/profile/models/user_profile.dart';

class ShowUserData extends StatelessWidget {
  const ShowUserData({super.key, required this.user});
  final UserModel user;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // scrolledUnderElevation: 0,
        // surfaceTintColor: Colors.transparent,
        // elevation: 0,
        // shadowColor: Colors.transparent,
        // backgroundColor: Colors.white,
        title: AppText.title(user.name),
      ),
      body: ListView(
        padding: .symmetric(horizontal: 12),
        children: [AppText(user.name), Gap(12), _buildButton(context)],
      ),
    );
  }

  Widget _buildButton(BuildContext context) {
    if (!user.hasTrainerProfile) {
      return AppButton(
        text: 'Become a traienr',
        onPressed: () {
          context.pushReplacementNamed(RouteName.applyForTrainer);
        },
      );
    } else {
      return AppButton(text: 'Trainer page', onPressed: () {});
    }
  }
}
