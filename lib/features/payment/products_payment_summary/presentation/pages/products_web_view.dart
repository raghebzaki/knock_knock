import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/utils/app_constants.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:knockknock/features/payment/products_payment_summary/presentation/manager/products_place_order_cubit.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../generated/l10n.dart';
import '../../domain/entities/products_place_order_entity.dart';

class ProductWebView extends StatefulWidget {
  final String url;
  final ProductsPlaceOrderEntity productsPlaceOrderEntity;

  const ProductWebView({
    super.key,
    required this.url,
    required this.productsPlaceOrderEntity,
  });

  @override
  State<ProductWebView> createState() => _ProductWebViewState();
}

class _ProductWebViewState extends State<ProductWebView> {
  WebViewController controller = WebViewController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<ProductsPlaceOrderCubit>(),
      child: BlocConsumer<ProductsPlaceOrderCubit, ProductsPlaceOrderState>(
        listener: (context, state) {
          state.maybeWhen(
            success: (state) {
              if (state.status == 1) {
                context.defaultSnackBar(S.of(context).orderCreatedSuccessfully);
                context.pushNamed(myOrdersPageRoute);
              }
            },
            orElse: () {
              return null;
            },
          );
        },
        builder: (context, state) {
          ProductsPlaceOrderCubit productsPlaceOrderCubit =
          ProductsPlaceOrderCubit.get(context);
          return WebViewWidget(
            controller: controller
              ..setJavaScriptMode(JavaScriptMode.unrestricted)
              ..setBackgroundColor(Colors.white)
              ..setNavigationDelegate(
                NavigationDelegate(
                  onProgress: (int progress) {
                    // Update loading bar.
                  },
                  onWebResourceError: (WebResourceError error) {},
                  onNavigationRequest: (NavigationRequest request) {
                    if (request.url ==
                        '${AppConstants.apiBaseUrl}v1/service_orders/stripe-success') {
                      context.defaultSnackBar(S.of(context).paymentSuccess,
                          color: Colors.green);
                      productsPlaceOrderCubit.placeOrderAfterPayment(
                          widget.productsPlaceOrderEntity);
                    } else {
                      context.defaultSnackBar(S.of(context).paymentFailed,
                          color: Colors.red);
                      context.pushNamed(bottomNavBarPageRoute);
                    }
                    if (request.url.startsWith(widget.url)) {
                      return NavigationDecision.prevent;
                    }
                    return NavigationDecision.navigate;
                  },
                ),
              )
              ..loadRequest(Uri.parse(widget.url)),
          );
        },
      ),
    );
  }
}
