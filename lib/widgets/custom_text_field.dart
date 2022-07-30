// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_idara_assignment_01/utils/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final bool? obscureText;
  final bool? expands;
  final bool? isIconVisible;
  final double? fieldHeight;
  final IconData? icon;
  final String hintText;
  final double? verticalPadding;
  final double? borderRadius;
  final String? defaultText;
  final bool? isMultiline;
  CustomTextField({
    super.key,
    this.controller,
    this.obscureText = false,
    this.expands,
    this.icon,
    this.borderRadius,
    this.fieldHeight,
    this.verticalPadding,
    this.defaultText,
    this.isMultiline = false,
    this.isIconVisible = false,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.textfieldColor,
        borderRadius: BorderRadius.circular(borderRadius ?? 15),
        border: Border.all(
          color: AppColors.borderColor,
        ),
      ),
      height: fieldHeight ?? 71.sp,
      child: TextField(
        // ignore: unnecessary_null_in_if_null_operators
        controller: TextEditingController()..text = defaultText??'',
        maxLines: isMultiline! ? null : 1,
        keyboardType: isMultiline! ? TextInputType.multiline : null,
        style: Theme.of(context).textTheme.labelMedium,
        expands: expands ?? false,
        obscureText: obscureText ?? false,
        decoration: InputDecoration(
          prefixIcon: isIconVisible!
              ? Visibility(
                  visible: isIconVisible!,
                  child: Icon(
                    icon ?? Icons.search,
                    color: AppColors.borderColor,
                  ),
                )
              : null,
          contentPadding: EdgeInsets.symmetric(
              horizontal: 20.w, vertical: verticalPadding ?? 25.h),
          border: InputBorder.none,
          hintText: hintText,
          hintStyle: Theme.of(context).textTheme.labelMedium,
        ),
        // textAlignVertical: TextAlignVertical.center,
      ),
    );
  }
}
