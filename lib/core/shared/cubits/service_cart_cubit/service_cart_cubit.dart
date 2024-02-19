import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../entities/service_entity.dart';

part 'service_cart_state.dart';

part 'service_cart_cubit.freezed.dart';

class ServiceCartCubit extends Cubit<ServiceCartStates> {
  ServiceCartCubit() : super(const ServiceCartStates.initial());

  static ServiceCartCubit get(BuildContext context) => BlocProvider.of(context);

  List<ServicesEntity> cartServices = [];

  addServiceToCart(ServicesEntity servicesEntity) {
    if (cartServices.any((item) => item.id == servicesEntity.id)) {
      cartServices;
      emit(ServiceCartStates.serviceAlreadyAdded(cartServices));
    } else {
      // cartProducts = List<ProductEntity>.from().add(productEntity);
      cartServices.add(servicesEntity);
      emit(ServiceCartStates.addedServiceToCart(cartServices));
    }
  }

  removeServiceFromCart(ServicesEntity servicesEntity) {
    cartServices.remove(servicesEntity);
    emit(
      ServiceCartStates.removedServiceFromCart(cartServices),
    );
  }

  getServiceCartItems() {
    cartServices;
    emit(
      ServiceCartStates.serviceCartItems(cartServices),
    );
  }

}
