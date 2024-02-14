import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../../../../../core/shared/widgets/custom_button.dart';

import '../../../../../../core/utils/app_colors.dart';
import '../../../../../core/router/router.dart';
import '../../../../../core/shared/arguments.dart';
import '../../../../../generated/l10n.dart';
import '../../data/models/maps_model.dart';
import '../manager/maps_cubit.dart';
import '../widgets/google_map_builder.dart';

class MapView extends StatefulWidget {
  const MapView({super.key});

  @override
  State<MapView> createState() => _MapViewState();
}

class _MapViewState extends State<MapView> {
  // final Address address = Address();
  // final HiveDatabase hiveDatabase = HiveDatabase();

  List<MapsModel> markersList = [];
  Placemark? newAddress;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => MapsCubit()
        ..addMarker(markersList)
        ..setCustomMarker(),
      child: BlocConsumer<MapsCubit, MapsStates>(
        listener: (context, state) {},
        builder: (context, state) {
          MapsCubit mapsCubit = MapsCubit.get(context);
          return Scaffold(
            backgroundColor: AppColors.primary,
            appBar: AppBar(title: Text(S.of(context).chooseAddress)),
            body: SafeArea(
              child: Stack(
                children: [
                  GoogleMapBuilder(
                    onGoogleMapCreated: mapsCubit.mapController,
                    markers: mapsCubit.markers.map((e) => e).toSet(),
                    onTap: (LatLng latLng) async {
                      Marker marker = Marker(
                        markerId: const MarkerId(
                          '1',
                        ),
                        position: LatLng(
                          latLng.latitude,
                          latLng.longitude,
                        ),
                        infoWindow: InfoWindow(
                          title: S.of(context).newAddress,
                        ),
                        icon: BitmapDescriptor.defaultMarker,
                      );
                      mapsCubit.markers.add(
                        marker,
                      );
                      setState(() {});
                      newAddress = await mapsCubit.convertLocation(latLng);
                      // newAddress = latLng;
                    },
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      color: Colors.white,
                      child: CustomBtn(
                        label: S.of(context).addNewAddress,
                        onPressed: () async {
                          context.pushNamed(
                            addNewAddressPageRoute,
                            arguments: AddresAedgs(
                              address: newAddress!,
                            ),
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
