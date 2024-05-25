import 'package:flutter/material.dart';

import 'package:anylist/utils/constants/icon.dart';

class DashboardLayout extends StatelessWidget {
  const DashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              IconConst.backgroudImage,
            ),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}
