part of 'package_cubit.dart';

@freezed
class PackageState with _$PackageState {
  const factory PackageState.initial() = _Initial;
  const factory PackageState.loading() = Loading;
  const factory PackageState.success(final List<PackageEntity>? packageEntity) = Success;
  const factory PackageState.error(final String? errCode, final String? err) = Error;
}
