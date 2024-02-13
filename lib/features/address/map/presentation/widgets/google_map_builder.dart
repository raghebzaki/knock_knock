import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class GoogleMapBuilder extends StatefulWidget {
  // final Completer<GoogleMapController> mapController;
  final MapCreatedCallback onGoogleMapCreated;
  final Set<Marker> markers;
  final Function(LatLng) onTap;

  const GoogleMapBuilder({
    super.key,
    required this.onGoogleMapCreated,
    required this.markers,
    required this.onTap,
  });

  @override
  State<GoogleMapBuilder> createState() => _GoogleMapBuilderState();
}

class _GoogleMapBuilderState extends State<GoogleMapBuilder> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      width: MediaQuery.of(context).size.width,
      child: GoogleMap(
        mapType: MapType.normal,
        initialCameraPosition: const CameraPosition(
          target: LatLng(37.42796133580664, -122.085749655962),
          zoom: 15,
        ),
        zoomControlsEnabled: true,
        zoomGesturesEnabled: true,
        compassEnabled: true,
        mapToolbarEnabled: true,
        myLocationButtonEnabled: true,
        myLocationEnabled: true,
        onMapCreated: widget.onGoogleMapCreated,
        markers: widget.markers,
        onTap: widget.onTap,
      ),
    );
  }
}