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
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 20.0),
      child: CarouselSlider.builder(
        itemCount: productImages.length,
        itemBuilder: (BuildContext context, int index, int realIndex) {
          return ProductCard(
            imageUrl: productImages[index],
            productName: productNames[index],
            productPrice: productPrices[index],
          );
        },
        options: CarouselOptions(
          height: 400.0,
          enlargeCenterPage: true,
          autoPlay: true,
          aspectRatio: 16 / 9,
          autoPlayCurve: Curves.fastOutSlowIn,
          enableInfiniteScroll: true,
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          viewportFraction: 0.8,
        ),
      ),
    );
  }
}
