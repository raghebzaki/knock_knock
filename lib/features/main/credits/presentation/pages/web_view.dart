import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/core/shared/models/user_data_model.dart';
import 'package:knockknock/core/utils/extensions.dart';
import 'package:knockknock/features/credits/buy_credits/domain/entities/buy_credit_place_order_entity.dart';
import 'package:webview_flutter/webview_flutter.dart';

import '../../../../../core/dependency_injection/di.dart' as di;
import '../../../../../generated/l10n.dart';
import '../../../../credits/buy_credits/presentation/manager/buy_credit_cubit.dart';

class WebViewPayment extends StatefulWidget {
  final String url;
  final num packageId;

  const WebViewPayment({
    super.key, required this.url, required this.packageId,
  });

  @override
  State<WebViewPayment> createState() => _WebViewPaymentState();
}

class _WebViewPaymentState extends State<WebViewPayment> {
  WebViewController controller = WebViewController();

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => di.di<BuyCreditCubit>(),
      child: BlocConsumer<BuyCreditCubit, BuyCreditState>(
        listener: (context, state) {
          
        },
        builder: (context, state) {
          BuyCreditCubit buyCreditCubit=BuyCreditCubit.get(context);
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
                        'https://dashboard.knock-knock.ae/api/v1/packages/stripe-success') {
                      context.defaultSnackBar(
                          S.of(context).paymentSuccess, color: Colors.green);
                      context.pushNamed(creditsViewPageRoute);
                      buyCreditCubit.addCredits(BuyCreditPlaceOrderEntity(userId: UserData.id,packageId: widget.packageId));
                    } else {
                      context.defaultSnackBar(
                          S.of(context).paymentFailed, color: Colors.red);
                      context.pushNamed(creditsViewPageRoute);
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
