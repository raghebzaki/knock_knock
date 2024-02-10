import 'dart:async';
import 'package:bloc/bloc.dart';
import 'package:connectivity_plus/connectivity_plus.dart';

// enum represent different states of internet connection
enum InternetStates {
  initial,
  lost,
  gained,
}

class InternetCubit extends Cubit<InternetStates> {
  final Connectivity connectivity = Connectivity();

  //Subscription to monitor changes in internet connectivity
  StreamSubscription? connectivitySubscription;

  InternetCubit() : super(InternetStates.initial) {
    // Start listening to changes in connectivity when an instance is created
    connectivitySubscription = connectivity.onConnectivityChanged.listen((result) {
      if (result == ConnectivityResult.mobile || result == ConnectivityResult.wifi) {
        // If mobile or Wi-Fi connectivity is detected, emit "gained" state.
        emit(InternetStates.gained);
      } else {
        // If no mobile or Wi-Fi connectivity is detected, emit "lost" state.
        emit(InternetStates.lost);
      }
    });
  }

  @override
  Future<void> close() {
    connectivitySubscription?.cancel();
    return super.close();
  }
}