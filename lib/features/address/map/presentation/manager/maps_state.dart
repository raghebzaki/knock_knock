part of 'maps_cubit.dart';

@freezed
class MapsStates with _$MapsStates {
  const factory MapsStates.initial() = _Initial;
  const factory MapsStates.getUserLocationLoading() = GetUserLocationLoading;
  const factory MapsStates.getUserLocationSuccess(final LatLng location) = GetUserLocationSuccess;
  const factory MapsStates.getUserLocationError(final String err) = GetUserLocationError;
  const factory MapsStates.customMarker() = CustomMarker;
  const factory MapsStates.newLocation() = NewLocation;
  const factory MapsStates.mapController() = MapController;
}
