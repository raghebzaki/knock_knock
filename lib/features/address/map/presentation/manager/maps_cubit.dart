import 'dart:async';
import 'dart:ui' as ui;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:location/location.dart' as loc;

import '../../data/models/maps_model.dart';

part 'maps_state.dart';

part 'maps_cubit.freezed.dart';

class MapsCubit extends Cubit<MapsStates> {
  MapsCubit() : super(const MapsStates.initial());

  static MapsCubit get(BuildContext context) => BlocProvider.of(context);

  /// Map Controller
  final Completer<GoogleMapController> googleMapCtrl = Completer();

  mapController(GoogleMapController controller) async {
    googleMapCtrl.complete(controller);
    locationData = await location.getLocation();
    controller.animateCamera(
      CameraUpdate.newCameraPosition(
        CameraPosition(
          target: LatLng(locationData!.latitude!, locationData!.longitude!),
          zoom: 15,
        ),
      ),
    );
    emit(
      const MapsStates.mapController(),
    );
  }

  /// Add Marker
  List<Marker> markers = [];

  addMarker(List<MapsModel> mapsList) {
    for (int i = 0; i < mapsList.length; i++) {
      markers.add(
        Marker(
          markerId: MarkerId('${mapsList[i].id}'),
          position: LatLng(
            double.parse(mapsList[i].latitude!),
            double.parse(mapsList[i].longitude!),
          ),
          icon: BitmapDescriptor.defaultMarker,
        ),
      );
    }
    emit(
      const MapsStates.newLocation(),
    );
  }

  /// Convert Marker to Address data
  Future<Placemark> convertLocation(LatLng currentPosition) async {
    List<Placemark> placeMarks = await placemarkFromCoordinates(
        currentPosition.latitude, currentPosition.longitude);
    Placemark place = placeMarks[0];
    return place;
  }


  // late List<MapsModel> mapsList = [];
  //
  // getContactsLocation(BuildContext context) async {
  //   mapsList = await MapService().getContactsLocation();
  //   addContactsLocation(mapsList, context);
  // }

  // LatLng sourceLocation = const LatLng(37.33500926, -122.03272188);
  // LatLng destination = const LatLng(37.33429383, -122.06600055);

  // var markerSourceIcon = getBytesFromAsset('assets/images/user.png', 100, 100,);

  BitmapDescriptor sourceIcon = BitmapDescriptor.defaultMarker;
  BitmapDescriptor destinationIcon = BitmapDescriptor.defaultMarker;

  void setCustomMarker() {
    BitmapDescriptor.fromAssetImage(
      ImageConfiguration.empty,
      "AppImages.mapMarkerImg",
    ).then((icon) {
      sourceIcon = icon;
    });

    BitmapDescriptor.fromAssetImage(
      const ImageConfiguration(
        size: Size(
          3,
          3,
        ),
      ),
      "AppImages.mapMarkerImg",
    ).then((icon) {
      destinationIcon = icon;
    });

    emit(
      const MapsStates.customMarker(),
    );
  }

  // Location location = Location();
  loc.Location location = loc.Location();
  bool serviceEnabled = true;

  loc.PermissionStatus? permissionGranted;
  loc.LocationData? locationData;
  LatLng? currentLocation;

  // getUserCurrentLocation() async {
  //   emit(const MapsStates.getUserLocationLoading());
  //   try {
  //     serviceEnabled = await location.serviceEnabled();
  //     if (!serviceEnabled) {
  //       serviceEnabled = await location.requestService();
  //       if (!serviceEnabled) {
  //         return;
  //       }
  //     }
  //
  //     permissionGranted = await location.hasPermission();
  //     if (permissionGranted == loc.PermissionStatus.denied) {
  //       permissionGranted = await location.requestPermission();
  //       if (permissionGranted != loc.PermissionStatus.granted) {
  //         return;
  //       }
  //     }
  //
  //     locationData = await location.getLocation();
  //     currentLocation = LatLng(
  //       locationData!.latitude!,
  //       locationData!.longitude!,
  //     );
  //     if (kDebugMode) {
  //       // print(locationData);
  //       // print(currentLocation);
  //     }
  //     emit(
  //       MapsStates.getUserLocationSuccess(currentLocation!),
  //     );
  //   } catch (err) {
  //     emit(
  //       MapsStates.getUserLocationError(
  //         err.toString(),
  //       ),
  //     );
  //   }
  // }

  // convertLocation(LatLng currentPosition) async {
  //   List<Placemark> placeMarks = await placemarkFromCoordinates(
  //       currentPosition.latitude, currentPosition.longitude);
  //   Placemark place = placeMarks[0];
  //   debugPrint(place.toString());
  // }


  Future getBytesFromAsset(String path, int height, int width) async {
    ByteData data = await rootBundle.load(path);
    ui.Codec codec = await ui.instantiateImageCodec(
      data.buffer.asUint8List(),
      targetHeight: height,
      targetWidth: width,
    );
    ui.FrameInfo fi = await codec.getNextFrame();
    return (await fi.image.toByteData(
      format: ui.ImageByteFormat.png,
    ))
        ?.buffer
        .asUint8List();
  }
}
