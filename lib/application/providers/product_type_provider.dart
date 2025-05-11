import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:proyecto_final/domain/models/product_type.dart';

class ProductTypeNotifier extends StateNotifier<ProductTypeModel> {
  ProductTypeNotifier() : super(ProductTypeModel(0, '', Colors.white));

  int maxId = 0;

  int getNewProductId() {
    return ++maxId;
  }

  void updateProductName(String typeName) {
    updateProductType(typeName, state.color);
  }

  void updateColor(Color newColor) {
    updateProductType(state.typeName, newColor);
  }

  void updateProductType(String name, Color color) {
    int id = state.id == 0 ? getNewProductId() : state.id;
    state = ProductTypeModel(id, name, color);
  }
}

final productTypeProvider =
    StateNotifierProvider<ProductTypeNotifier, ProductTypeModel>((ref) {
      return ProductTypeNotifier();
    });
