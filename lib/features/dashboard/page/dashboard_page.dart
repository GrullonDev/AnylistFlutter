import 'package:flutter/material.dart';

import 'package:anylist/features/dashboard/page/dashboard_layout.dart';
import 'package:anylist/features/dashboard/provider/dashboard_bloc.dart';
import 'package:anylist/utils/bases/base_model_scaffold.dart';
import 'package:anylist/widgets/custom_appbar.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseModelScaffold(
        model: DashboardBloc(context: context),
        builder: (context, _) {
          return const Scaffold(
            appBar: CustomAppBar(),
            body: DashboardLayout(),
          );
        });
  }
}
