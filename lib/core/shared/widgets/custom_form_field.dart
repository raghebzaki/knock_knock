// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../config/themes/app_text_styles.dart';
import '../../utils/dimensions.dart';

class CustomFormField extends StatelessWidget {
  final String? label;
  final String? hint;
  final Widget? preIcon;
  final Widget? sufIcon;
  final TextInputType? keyboardType;
  final List<TextInputFormatter>? formatters;
  final String? Function(String?)? validator;
  final Function(String)? onChange;
  final Function(String)? onSubmitted;
  final bool? isObscure;
  final bool isCapitalized;
  final bool? readOnly;
  final bool? isEnable;
  final int? maxLength;
  final int? maxLines;
  final TextEditingController? ctrl;
  final double borderRadius;
  final Color focusedBorderColor;
  final Color enabledBorderColor;

  const CustomFormField({
    super.key,
    this.label,
    this.hint,
    this.preIcon,
    this.sufIcon,
    this.keyboardType,
    this.formatters,
    this.validator,
    this.onChange,
    this.onSubmitted,
    this.isObscure = false,
    this.isCapitalized = false,
    this.isEnable = true,
    this.readOnly = false,
    this.maxLength,
    this.maxLines = 1,
    this.ctrl,
    this.borderRadius = Dimensions.r10,
    this.focusedBorderColor = Colors.black,
    this.enabledBorderColor = Colors.black,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: isObscure ?? false,
      textCapitalization:
      isCapitalized ? TextCapitalization.words : TextCapitalization.none,
      enabled: isEnable,
      readOnly: readOnly!,
      maxLength: maxLength,
      maxLines: maxLines,
      onChanged: onChange,
      onFieldSubmitted: onSubmitted,
      controller: ctrl,
      validator: validator,
      inputFormatters: formatters,
      keyboardType: keyboardType,
      style: CustomTextStyle.kFormFieldTextStyle,

      decoration: InputDecoration(

          labelText: label,
          hintText: hint,
          isDense: true,
          counter: const Offstage(),
          prefixIcon: preIcon,
          suffixIcon: sufIcon,
          contentPadding: EdgeInsets.symmetric(
            horizontal: Dimensions.p10.w,
            vertical: Dimensions.p10.h,
          ),
          labelStyle: CustomTextStyle.kFormFieldTextStyle,
          hintStyle: CustomTextStyle.kFormFieldTextStyle
      ),
    );
  }
}