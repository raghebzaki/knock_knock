import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entities/product_entity.dart';

part 'product_cart_cubit.freezed.dart';

part 'product_cart_states.dart';

class ProductCartCubit extends Cubit<ProductCartStates> {
  ProductCartCubit() : super(const ProductCartStates.initial());

  static ProductCartCubit get(BuildContext context) => BlocProvider.of(context);

  List<ProductEntity> cartProducts = [];

  addProductToCart(ProductEntity productEntity) {

    if (cartProducts.any((item) => item.id == productEntity.id)) {
      for (var item in cartProducts) {
        item.id == productEntity.id?
        productEntity=item:productEntity;
      }
      cartProducts.remove(productEntity);
      productEntity.userQuantity=productEntity.userQuantity!+1;
      cartProducts.add(productEntity);
      emit(ProductCartStates.productAlreadyAdded(cartProducts));
    } else {
      cartProducts.add(productEntity);
      emit(ProductCartStates.addedProductToCart(cartProducts));
    }
  }

  removeProductFromCart(int index) {
    cartProducts.removeAt(index);
    emit(
      ProductCartStates.productRemovedFromCart(cartProducts),
    );
  }

  getProductCartItems() {
    cartProducts;
    emit(
      ProductCartStates.productCartItems(cartProducts),
    );
  }
}
