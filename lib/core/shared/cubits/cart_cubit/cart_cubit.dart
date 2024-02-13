import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entities/product_entity.dart';

part 'cart_cubit.freezed.dart';

part 'cart_state.dart';

class CartCubit extends Cubit<CartStates> {
  CartCubit() : super(const CartStates.initial());

  static CartCubit get(BuildContext context) => BlocProvider.of(context);

  List<ProductEntity> cartProducts = [];

  addToCart(ProductEntity productEntity) {
    if (cartProducts.any((item) => item.id == productEntity.id)) {
      cartProducts;
      emit(CartStates.alreadyAdded(cartProducts));
    } else {
      // cartProducts = List<ProductEntity>.from().add(productEntity);
      cartProducts.add(productEntity);
      emit(CartStates.addedToCart(cartProducts));
    }
  }

  removeFromCart(ProductEntity productEntity) {
    cartProducts.remove(productEntity);
    emit(
      CartStates.removedFromCart(cartProducts),
    );
  }

  getCartItems() {
    cartProducts;
    emit(
      CartStates.cartItems(cartProducts),
    );
  }
}
