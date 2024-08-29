import 'package:flutter/material.dart';

import 'model/product.dart';
import 'model/products_repository.dart';
import 'supplemental/asymmetric_view.dart';

class HomePage extends StatelessWidget {
  final Category category;

  const HomePage({this.category = Category.all, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Return an AsymmetricView
    // Pass Category variable to AsymmetricView
    return AsymmetricView(
      products: ProductsRepository.loadProducts(category),

      // TODO: Set resizeToAvoidBottomInset
    );
  }
}
