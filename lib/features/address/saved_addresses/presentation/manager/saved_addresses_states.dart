part of 'saved_addresses_cubit.dart';

@freezed
class SavedAddressesStates with _$SavedAddressesStates {
  const factory SavedAddressesStates.initial() = _Initial;
  const factory SavedAddressesStates.loading() = Loading;
  const factory SavedAddressesStates.success(final List<Address> addresses) = Success;
  const factory SavedAddressesStates.error(final String err) = Error;
}
