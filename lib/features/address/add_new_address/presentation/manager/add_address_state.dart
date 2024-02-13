part of 'add_address_cubit.dart';

@freezed
class AddAddressStates with _$AddAddressStates {
  const factory AddAddressStates.initial() = _Initial;
  const factory AddAddressStates.loading() = Loading;
  const factory AddAddressStates.success() = Success;
  const factory AddAddressStates.error(final String err) = Error;
}
