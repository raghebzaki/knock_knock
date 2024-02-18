import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gap/gap.dart';
import 'package:geocoding/geocoding.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:knockknock/core/utils/extensions.dart';

import '../../../../../../core/database/address_class.dart';
import '../../../../../../core/database/database_hive.dart';
import '../../../../../../core/shared/widgets/custom_button.dart';
import '../../../../../../core/shared/widgets/custom_form_field.dart';
import '../../../../../../core/shared/widgets/state_error_widget.dart';
import '../../../../../../core/shared/widgets/state_loading_widget.dart';
import '../../../../../../core/utils/app_colors.dart';
import '../../../../../../core/utils/app_constants.dart';
import '../../../../../../core/utils/dimensions.dart';
import '../../../../../../generated/l10n.dart';
import '../../../../../core/router/router.dart';
import '../manager/add_address_cubit.dart';

class AddNewAddressView extends StatefulWidget {
  final Placemark address;
  final LatLng latLng;

  const AddNewAddressView({super.key, required this.address, required this.latLng});

  @override
  State<AddNewAddressView> createState() => _AddNewAddressViewState();
}

class _AddNewAddressViewState extends State<AddNewAddressView> {
  GlobalKey<FormState> initFormKey = GlobalKey();
  GlobalKey<FormState> successFormKey = GlobalKey();
  final Address address = Address();
  final HiveDatabase hiveDatabase = HiveDatabase();

  TextEditingController addressCtrl = TextEditingController();
  TextEditingController buildingCtrl = TextEditingController();
  TextEditingController flatCtrl = TextEditingController();
  TextEditingController phoneCtrl = TextEditingController();
  TextEditingController stateCtrl = TextEditingController();
  TextEditingController cityCtrl = TextEditingController();
  TextEditingController zipCodeCtrl = TextEditingController();

  @override
  void initState() {
    super.initState();
    addressCtrl = TextEditingController(text: widget.address.street);
    stateCtrl = TextEditingController(text: widget.address.administrativeArea);
    cityCtrl =
        TextEditingController(text: widget.address.subAdministrativeArea);
    zipCodeCtrl = TextEditingController(text: widget.address.postalCode);
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddAddressCubit(hiveDatabase: hiveDatabase),
      child: BlocConsumer<AddAddressCubit, AddAddressStates>(
        listener: (context, state) {},
        builder: (context, state) {
          AddAddressCubit addAddressCubit = AddAddressCubit.get(context);
          return Form(
            key: initFormKey,
            child: Scaffold(
              backgroundColor: AppColors.primary,
              appBar: AppBar(
                title: Text(
                  S.of(context).chooseAddress,
                ),
              ),
              body: SafeArea(
                child: Padding(
                  padding: const EdgeInsets.all(Dimensions.p16),
                  child: state.when(
                    initial: () {
                      return Stack(
                        children: [
                          SingleChildScrollView(
                            child: Column(
                              children: [
                                Gap(20.h),
                                CustomFormField(
                                  ctrl: addressCtrl,
                                  label: S.current.address,
                                  readOnly: true,
                                ),
                                Gap(10.h),
                                CustomFormField(
                                  ctrl: buildingCtrl,
                                  label: S.of(context).buildingNo,
                                  validator: (value) {
                                    if (buildingCtrl.text.isEmpty) {
                                      log(value.toString());
                                      return S.of(context).buildingNoCantBeEmpty;
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                Gap(10.h),
                                CustomFormField(
                                  ctrl: flatCtrl,
                                  label: S.of(context).flatNo,
                                  validator: (value) {
                                    if (flatCtrl.text.isEmpty) {
                                      log(value.toString());
                                      return S.of(context).flatNoCantBeEmpty;
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                Gap(10.h),
                                CustomFormField(
                                  ctrl: phoneCtrl,
                                  label: S.current.phone,
                                  validator: (value) {
                                    if (phoneCtrl.text.isEmpty) {
                                      log(value.toString());
                                      return S.of(context).phoneNoCantBeEmpty;
                                    } else {
                                      return null;
                                    }
                                  },
                                ),
                                Gap(10.h),
                                CustomFormField(
                                  ctrl: stateCtrl,
                                  label: S.of(context).state,
                                  readOnly: true,
                                ),
                                Gap(10.h),
                                CustomFormField(
                                  ctrl: cityCtrl,
                                  label: S.of(context).city,
                                  readOnly: true,
                                ),
                                Gap(10.h),
                                CustomFormField(
                                  ctrl: zipCodeCtrl,
                                  label: S.of(context).postalCode,
                                  readOnly: true,
                                ),
                              ],
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              color: Colors.white,
                              child: CustomBtn(
                                label: S.of(context).addAddress,
                                onPressed: () async {
                                  if (initFormKey.currentState!.validate()) {
                                    addAddressCubit.addAddress(
                                      Address(
                                        address: addressCtrl.text,
                                        building: buildingCtrl.text,
                                        flat: flatCtrl.text,
                                        code: zipCodeCtrl.text,
                                        country: stateCtrl.text,
                                        city: cityCtrl.text,
                                        phone: phoneCtrl.text,
                                        latitude: widget.latLng,
                                      ),
                                    );
                                    context.pushReplacementNamed(
                                      savedAddressesPageRoute,
                                    );
                                  }
                                },
                              ),
                            ),
                          )
                        ],
                      );
                    },
                    loading: () {
                      return const StateLoadingWidget();
                    },
                    success: () {
                      return SafeArea(
                        child: Stack(
                          children: [
                            SingleChildScrollView(
                              child: Column(
                                children: [
                                  Gap(20.h),
                                  CustomFormField(
                                    ctrl: addressCtrl,
                                    label: S.current.address,
                                    readOnly: true,
                                  ),
                                  Gap(10.h),
                                  CustomFormField(
                                    ctrl: buildingCtrl,
                                    label: S.of(context).buildingNo,
                                    validator: (value) {
                                      if (buildingCtrl.text.isEmpty) {
                                        log(value.toString());
                                        return S.of(context).buildingNoCantBeEmpty;
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                  Gap(10.h),
                                  CustomFormField(
                                    ctrl: flatCtrl,
                                    label: S.of(context).flatNo,
                                    validator: (value) {
                                      if (flatCtrl.text.isEmpty) {
                                        log(value.toString());
                                        return S.of(context).flatNoCantBeEmpty;
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                  Gap(10.h),
                                  CustomFormField(
                                    ctrl: phoneCtrl,
                                    label: S.current.phone,
                                    validator: (value) {
                                      if (phoneCtrl.text.isEmpty) {
                                        log(value.toString());
                                        return S.of(context).phoneNoCantBeEmpty;
                                      } else {
                                        return null;
                                      }
                                    },
                                  ),
                                  Gap(10.h),
                                  CustomFormField(
                                    ctrl: stateCtrl,
                                    label: S.of(context).state,
                                    readOnly: true,
                                  ),
                                  Gap(10.h),
                                  CustomFormField(
                                    ctrl: cityCtrl,
                                    label: S.of(context).city,
                                    readOnly: true,
                                  ),
                                  Gap(10.h),
                                  CustomFormField(
                                    ctrl: zipCodeCtrl,
                                    label: S.of(context).postalCode,
                                    readOnly: true,
                                  ),
                                ],
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Container(
                                color: Colors.white,
                                child: CustomBtn(
                                  label: S.of(context).addNewAddress,
                                  onPressed: () async {
                                    if (initFormKey.currentState!.validate()) {
                                      addAddressCubit.addAddress(
                                        Address(
                                          address: addressCtrl.text,
                                          building: buildingCtrl.text,
                                          flat: flatCtrl.text,
                                          code: zipCodeCtrl.text,
                                          country: stateCtrl.text,
                                          city: cityCtrl.text,
                                          phone: phoneCtrl.text,
                                          latitude: widget.latLng,
                                        ),
                                      );
                                      context.pushReplacementNamed(
                                        savedAddressesPageRoute,
                                      );
                                    }
                                  },
                                ),
                              ),
                            )
                          ],
                        ),
                      );
                    },
                    error: (err) {
                      return StateErrorWidget(
                        errCode: AppConstants.unknownNumValue.toString(),
                        err: err,
                      );
                    },
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
