import 'package:flutter/material.dart';

import 'package:anylist/feature/auth/bloc/signin_bloc.dart';
import 'package:anylist/feature/auth/pages/signin_layout.dart';
import 'package:anylist/utils/widgets/base/base_model_scaffold.dart';

class SignInPage extends StatelessWidget {
  const SignInPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseModelScaffold(
      model: SignInBloc(),
      builder: (_, __) {
        return const SignInLayout();
      },
    );
  }
}
