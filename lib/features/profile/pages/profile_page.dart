import 'package:flutter/material.dart';
import 'package:teaching_lms_adv/core/blocs/exports.dart';
import 'package:teaching_lms_adv/core/widgets/error_msg.dart';
import 'package:teaching_lms_adv/core/widgets/progress_indicator.dart';
import 'package:teaching_lms_adv/features/profile/blocs/profile/profile_bloc.dart';
import 'package:teaching_lms_adv/features/profile/widgets/profile_loaded_data.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    // context.read<ProfileBloc>().add(ProfileEvent.get());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => AppLoading(),
            loaded: (user) => ShowUserData(user: user),
            failure: (f) => ShowErrorMessage(failure: f),
          );
        },
      ),
    );
  }
}
