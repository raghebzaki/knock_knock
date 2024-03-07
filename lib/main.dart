import 'dart:io';

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:knockknock/core/shared/cubits/service_cart_cubit/service_cart_cubit.dart';

import 'core/database/address_class.dart';
import 'core/dependency_injection/di.dart' as di;
import 'core/helpers/cache_helper.dart';
import 'core/my_http.dart';
import 'core/resources/firebase/firebase_resources.dart';
import 'core/router/router_generator.dart';
import 'core/shared/cubits/product_cart_cubit/product_cart_cubit.dart';
import 'core/shared/widgets/custom_error_widget.dart';
import 'core/utils/app_strings.dart';
import 'core/utils/cubit_observer.dart';
import 'generated/l10n.dart';
import 'main_view.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = AppCubitObserver();
  await ScreenUtil.ensureScreenSize();
  await di.init();
  await Hive.initFlutter();
  Hive.registerAdapter(AddressAdapter());

  ErrorWidget.builder = (FlutterErrorDetails errorDetails) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ErrorWidgetClass(
          errorDetails: errorDetails,
        ),
      ),
    );
  };
  HttpOverrides.global = MyHttpOverrides();

  if (Platform.isAndroid) {
    await Firebase.initializeApp(
      options: const FirebaseOptions(
          apiKey: "AIzaSyBsoV6X4FafOmVa7VF7Xkp8w8jZslWoDVg",
          appId: "1:1031782501963:android:9a51161b34d3010d3647ce",
          messagingSenderId: "1031782501963",
          projectId: "knock-knock-414709",
      ),
    );
    FireBaseResources().android();
  } else if (Platform.isIOS) {
    await Firebase.initializeApp();
    FireBaseResources().ios();
  }
  var currentLocale = await CacheHelper.getLocal();

  runApp(
    MyApp(
      currentLang: currentLocale,
    ),
  );
}

class MyApp extends StatefulWidget {
  final Locale currentLang;

  const MyApp({super.key, required this.currentLang});

  static void setLocale(BuildContext context, Locale newLocale) async {
    _MyAppState? state = context.findAncestorStateOfType<_MyAppState>();
    state!.changeLanguage(newLocale);
  }

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  Locale locale = const Locale("en");

  @override
  void initState() {
    super.initState();

    locale = widget.currentLang;
    FirebaseMessaging.onMessage.listen(
      (RemoteMessage message) {},
    );
  }

  changeLanguage(Locale newLocale) {
    setState(() {
      locale = newLocale;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ProductCartCubit(),
        ),
        BlocProvider(
          create: (context) => ServiceCartCubit(),
        ),
      ],
      child: ScreenUtilInit(
        designSize: const Size(360, 800),
        minTextAdapt: true,
        splitScreenMode: true,
        // Use builder only if you need to use library outside ScreenUtilInit context
        builder: (ctx, child) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            locale: locale,
            localizationsDelegates: const [
              S.delegate,
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate,
            ],
            supportedLocales: S.delegate.supportedLocales,
            title: AppStrings.appName,
            onGenerateRoute: AppRouters.routeGenerator,
            home: child,
          );
        },
        child: const MainView(),
      ),
    );
  }
}
