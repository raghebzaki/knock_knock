part of 'track_order_cubit.dart';

@freezed
class TrackServicesOrderStates with _$TrackOrderStates {
  const factory TrackServicesOrderStates.initial() = _Initial;
  const factory TrackServicesOrderStates.loading() = Loading;
  const factory TrackServicesOrderStates.success(final TrackServicesOrderEntity trackOrder) = Success;
  const factory TrackServicesOrderStates.cancelSuccess(final CancelServicesOrderEntity cancelOrder) = CancelSuccess;
  const factory TrackServicesOrderStates.error(final String errCode, final String err) = Error;

}
