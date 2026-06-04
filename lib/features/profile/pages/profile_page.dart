import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:teaching_lms_adv/core/widgets/app_text.dart';
import 'package:teaching_lms_adv/core/widgets/error_msg.dart';
import 'package:teaching_lms_adv/core/widgets/progress_indicator.dart';
import 'package:teaching_lms_adv/features/profile/blocs/profile/profile_bloc.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    context.read<ProfileBloc>().add(ProfileEvent.get());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<ProfileBloc, ProfileState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: () => AppLoading(),
            loaded: (user) => AppText(user.name),
            failure: (f) => ShowErrorMessage(failure: f),
          );
        },
      ),
    );
  }
}
