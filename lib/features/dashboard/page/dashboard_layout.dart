import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import 'package:anylist/features/dashboard/provider/dashboard_bloc.dart';
import 'package:anylist/features/dashboard/widgets/carousel_slider.dart';
import 'package:anylist/utils/constants/icon.dart';

class DashboardLayout extends StatelessWidget {
  const DashboardLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<DashboardBloc>(
      builder: (context, model, _) => Scaffold(
        body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage(
                IconConst.backgroudImage,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: const ProductCarousel(
            productImages: [
              IconConst.product,
              IconConst.product1,
              IconConst.product2,
              IconConst.product3,
              IconConst.product4,
              IconConst.product5,
            ],
            productNames: [
              'Bebidas',
              'Leche',
              'Proteina',
              'Embutidos',
              'Varios',
              'Tortrix',
            ],
            productPrices: [
              0.35,
              4.30,
              1.35,
              4.30,
              1.35,
              5.30,
            ],
          ),
        ),
      ),
    );
  }
}
