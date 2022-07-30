// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_idara_assignment_01/utils/app_colors.dart';

class CustomButton extends StatelessWidget {
  String button_label;
  Color? button_color;
  Color? label_color;
  Function()? onButtonPressed;
  // ignore: use_key_in_widget_constructors, non_constant_identifier_names
  CustomButton(
      {this.label_color = AppColors.blackColor,
      this.button_color = AppColors.whiteColor,
      required this.button_label,
      required this.onButtonPressed});

  @override
  Widget build(BuildContext context) {
   // double deviceWidth = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: onButtonPressed,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 3.h),
        child: Container(
          width: double.infinity,
          height: 71.h,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(3),
            color: button_color,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                button_label,
                style: TextStyle(
                  color: label_color,
                  fontSize: 17.sp,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
