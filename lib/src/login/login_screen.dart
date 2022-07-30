// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_idara_assignment_01/utils/app_colors.dart';
import 'package:tech_idara_assignment_01/widgets/custom_button.dart';
import 'package:tech_idara_assignment_01/widgets/custom_text_field.dart';
import '../../utils/app_strings.dart';
import '../../utils/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 110.sp,
            left: 27.sp,
            right: 27.sp,
            bottom: 74.sp,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.letsSignYouIn,
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(height: 14.sp),
              Text(
                AppStrings.welcomeBackYouHaveBeenMissed,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(height: 67.sp),
              CustomTextField(
                hintText: AppStrings.enterYourEmailAddress,
              ),
              SizedBox(height: 35.sp),
              CustomTextField(
                obscureText: true,
                hintText: AppStrings.enterYourPassword,
              ),
              SizedBox(height: 200.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.donthaveAnAccount,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  GestureDetector(
                    child: Text(
                      AppStrings.register,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: AppColors.whiteColor,
                          ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, Routes.signupRoute);
                    },
                  ),
                ],
              ),
              SizedBox(height: 11.h),
              CustomButton(
                button_label: AppStrings.signIn,
                onButtonPressed: () {
                  Navigator.pushReplacementNamed(
                      context, Routes.jobListingRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
