import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';

import '../../utils/app_constants.dart';

class FireBaseResources {

  Future<void> _firebaseMessagingBackgroundHandler(RemoteMessage message) async {
    await Firebase.initializeApp();
  }

  android() async {
    FirebaseMessaging.instance.requestPermission();
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    AppConstants.fcmToken = await messaging.getToken();
    if (kDebugMode) {
      print("Device Token: ${AppConstants.fcmToken}");
    }

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    FirebaseMessaging.onMessage.listen((RemoteMessage message) {
      if (kDebugMode) {
        print('app closed');
      }
    });
    FirebaseMessaging.onMessageOpenedApp.listen((message) {
      if (kDebugMode) {
        print('app open');
      }
    });
  }

  ios() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      if (kDebugMode) {
        print('User granted permission');
      }
    } else if (settings.authorizationStatus == AuthorizationStatus.provisional) {
      if (kDebugMode) {
        print('User granted provisional permission');
      }
    } else {
      if (kDebugMode) {
        print('User declined or has not accepted permission');
      }
    }
    String? token = await messaging.getToken();
    if (kDebugMode) {
      print(token);
    }

    FirebaseMessaging.onBackgroundMessage(_firebaseMessagingBackgroundHandler);
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage remoteMessage) {
      // String? title = remoteMessage.notification!.title;
      // String? description = remoteMessage.notification!.body;

      //im gonna have an alertdialog when clicking from push notification
      // Alert(
      //   context: context,
      //   type: AlertType.error,
      //   title: title, // title from push notification data
      //   desc: description, // description from push notifcation data
      //   buttons: [
      //     DialogButton(
      //       onPressed: () => Navigator.pop(context),
      //       width: 120,
      //       child: const Text(
      //         "COOL",
      //         style: TextStyle(color: Colors.white, fontSize: 20),
      //       ),
      //     )
      //   ],
      // ).show();
    });
  }
}