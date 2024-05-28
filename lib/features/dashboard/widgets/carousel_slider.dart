import 'package:flutter/material.dart';

import 'package:carousel_slider/carousel_slider.dart';

import 'package:anylist/features/dashboard/widgets/product_card.dart';

class ProductCarousel extends StatelessWidget {
  final List<String>
      productImages; // Lista de URLs o paths de imágenes de productos
  final List<String> productNames; // Lista de nombres de productos
  final List<double> productPrices; // Lista de precios de productos

  const ProductCarousel({
    super.key,
    required this.productImages,
    required this.productNames,
    required this.productPrices,
  });

  @override
  Widget build(BuildContext context) {
    return CarouselSlider.builder(
      itemCount: productImages.length,
      disableGesture: false,
      itemBuilder: (BuildContext context, int index, int realIndex) {
        return Container(
          margin: const EdgeInsets.only(left: 120, right: 120),
          alignment: Alignment.center,
          color: Colors.transparent,
          height: 25,
          child: ProductCard(
            imageUrl: productImages[index],
            productName: productNames[index],
            productPrice: productPrices[index],
          ),
        );
      },
      options: CarouselOptions(
        autoPlay: true,
        aspectRatio: 16 / 9,
        enableInfiniteScroll: true,
        autoPlayAnimationDuration: const Duration(milliseconds: 800),
        viewportFraction: 0.8,
      ),
    );
  }
}
