import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../../../features/payment/services_payment_summary/domain/entities/services_place_order_entity.dart';
import '../../../../generated/l10n.dart';

part 'service_cart_state.dart';

part 'service_cart_cubit.freezed.dart';

class ServiceCartCubit extends Cubit<ServiceCartStates> {
  ServiceCartCubit() : super(const ServiceCartStates.initial());

  static ServiceCartCubit get(BuildContext context) => BlocProvider.of(context);

  List<ServicesPlaceOrderEntity> cartServices = [];

  addServiceToCart(ServicesPlaceOrderEntity servicesPlaceOrderEntity,BuildContext context) {
    if (cartServices.any((item) => item.servicesEntity!.id == servicesPlaceOrderEntity.servicesEntity!.id)) {
      context.defaultSnackBar(S.of(context).youAlreadyAddThisService);
      emit(ServiceCartStates.serviceAlreadyAdded(cartServices));
    } else {
      cartServices.add(servicesPlaceOrderEntity);
      emit(ServiceCartStates.addedServiceToCart(cartServices));
    }
  }

  removeServiceFromCart(int index) {
    cartServices.removeAt(index);
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
