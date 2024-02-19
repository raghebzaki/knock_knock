import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:knockknock/core/router/router.dart';
import 'package:knockknock/features/address/add_new_address/presentation/pages/add_new_address_view.dart';
import 'package:knockknock/features/address/map/presentation/pages/map_view.dart';
import 'package:knockknock/features/address/saved_addresses/presentation/pages/saved_addresses_view.dart';
import 'package:knockknock/features/credits/buy_credits/presentation/pages/buy_credits.dart';
import 'package:knockknock/features/main/credits/presentation/pages/credits_view.dart';
import 'package:knockknock/features/main/home/presentation/manager/services_cubit.dart';
import 'package:knockknock/features/main/home/presentation/pages/home_view.dart';
import 'package:knockknock/features/main/products/presentation/manager/products_cubit.dart';
import 'package:knockknock/features/main/products/presentation/pages/products_view.dart';
import 'package:knockknock/features/main/products_details/presentation/pages/products_details_view.dart';
import 'package:knockknock/features/main/profile/presentation/pages/profile_view.dart';
import 'package:knockknock/features/main/service_cart/presentation/pages/services_cart_view.dart';
import 'package:knockknock/features/main/services/presentation/pages/services_view.dart';
import 'package:knockknock/features/main/services_details/presentation/pages/services_details_view.dart';
import 'package:knockknock/features/orders/my_orders/presentation/pages/my_orders.dart';
import 'package:knockknock/features/orders/track_order/presentation/pages/track_order_view.dart';
import 'package:knockknock/features/payment/payment_summary/presentation/pages/payment_summary_view.dart';
import 'package:knockknock/features/profile/contact_us/presentation/pages/contact_us_view.dart';
import 'package:knockknock/features/profile/edit_profile/presentation/pages/edit_profile_view.dart';
import 'package:knockknock/features/profile/settings/presentation/pages/settings_view.dart';

import '../../features/auth/change_pass/presentation/pages/change_pass_view.dart';
import '../../features/auth/forgot_pass/presentation/pages/forgot_pass_view.dart';
import '../../features/auth/login/presentation/pages/login_view.dart';
import '../../features/auth/register/presentation/pages/register_view.dart';
import '../../features/auth/reset_pass/presentation/pages/reset_pass_view.dart';
import '../../features/auth/verify_account/presentation/pages/verify_account_view.dart';
import '../../features/bottom_nav_bar.dart';
import '../../features/credits/gift_card/presentation/pages/gift_card.dart';
import '../../features/main/products_cart/presentation/pages/products_cart_view.dart';
import '../../features/orders/order_details/presentation/pages/order_details_view.dart';
import '../../main_view.dart';
import '../dependency_injection/di.dart' as di;
import '../shared/arguments.dart';

class AppRouters {
  static Route routeGenerator(RouteSettings settings) {
    switch (settings.name) {
      case mainViewPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const MainView(),
        );
      /// Auth
      case loginPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const LoginView(),
        );
      case registerPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const RegisterView(),
        );
      case verifyAccountPageRoute:
        final args = settings.arguments as VerifyAccountArgs;
        return MaterialPageRoute(
          builder: (BuildContext context) => VerifyAccountView(
            email: args.email,
          ),
        );
      case forgotPassPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ForgotPassView(),
        );
      case resetPassPageRoute:
        final args = settings.arguments as ResetPasAedgs;
        return MaterialPageRoute(
          builder: (BuildContext context) => ResetPassView(
            email: args.email,
          ),
        );
      case changePassPageRoute:
        final args = settings.arguments as ChangePasAedgs;
        return MaterialPageRoute(
          builder: (BuildContext context) => ChangePassView(
            email: args.email,
          ),
        );

        /// main
      case bottomNavBarPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const BottomNavBarView(index: 0,),
        ); 
        case homePageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const HomeView(),
        );
        case productsCartPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ProductsCartView(),
        );
        case servicesCartPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ServicesCartView(),
        );
        case creditsViewPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const CreditsView(),
        );
        case productsPageRoute:
          final args = settings.arguments as ProductsArgs;
          return MaterialPageRoute(
            builder: (BuildContext context) => BlocProvider(
              create: (context) => di.di<ProductsCubit>()..getAllProducts(1,args.categoryId),
              child: ProductsView(categoryId: args.categoryId),
            ),
        );
        case productsDetailsPageRoute:
          final args = settings.arguments as ProductArgs;
          return MaterialPageRoute(
          builder: (BuildContext context) =>  ProductsDetailsView(productEntity: args.productEntity,),
        );
            case servicesPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => BlocProvider(
            create: (context) => di.di<ServicesCubit>()..getAllServices(1),
            child: const ServicesView(),
          ),
        );
        case servicesDetailsPageRoute:
          final args = settings.arguments as ServicesArgs;
          return MaterialPageRoute(
          builder: (BuildContext context) =>  ServicesDetailsView(servicesEntity: args.servicesEntity),
        );
        case savedAddressesPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SavedAddressesView(),
        );
        case addNewAddressPageRoute:
          final args = settings.arguments as AddresAedgs;
        return MaterialPageRoute(
          builder: (BuildContext context) => AddNewAddressView(address: args.address,latLng: args.latLng),
        );
        case mapPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const MapView(),
        );

        ///credits
      case buyCreditPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const BuyCreditsView(),
        );
      case sendGiftPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const GiftCardView(),
        );
        /// profile
      case profilePageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ProfileView(),
        );
      case contactUsPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const ContactUsView(),
        );
      case settingsPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const SettingsView(),
        );
      case editProfilePageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const EditProfileView(),
        );
        ///orders
      case myOrdersPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const MyOrdersView(),
        );
      case orderDetailsPageRoute:
        final args = settings.arguments as OrderDetailAedgs;
        return MaterialPageRoute(
          builder: (BuildContext context) =>
              OrderDetailsView(orderDetails: args.orderDetails),
        );
        case trackOrderPageRoute:
        final args = settings.arguments as OrderDetailAedgs;
        return MaterialPageRoute(
          builder: (BuildContext context) =>
              TrackOrderView(orderDetails: args.orderDetails),
        );
        case paymentSummeryPageRoute:
        return MaterialPageRoute(
          builder: (BuildContext context) => const PaymentSummaryView(),
        );
      default:
        return MaterialPageRoute(
          builder: (BuildContext context) => const MainView(),
        );

  }
  }
}
