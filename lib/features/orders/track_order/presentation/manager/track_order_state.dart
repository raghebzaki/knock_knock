part of 'track_order_cubit.dart';

@freezed
class TrackOrderStates with _$TrackOrderStates {
  const factory TrackOrderStates.initial() = _Initial;
  const factory TrackOrderStates.loading() = Loading;
  const factory TrackOrderStates.success(final TrackOrderEntity trackOrder) = Success;
  const factory TrackOrderStates.cancelSuccess(final CancelOrderEntity cancelOrder) = CancelSuccess;
  const factory TrackOrderStates.error(final String errCode, final String err) = Error;

}
