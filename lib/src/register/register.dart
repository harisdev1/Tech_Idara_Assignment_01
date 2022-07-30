// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_idara_assignment_01/utils/app_colors.dart';
import 'package:tech_idara_assignment_01/widgets/custom_button.dart';
import 'package:tech_idara_assignment_01/widgets/custom_text_field.dart';

import '../../utils/app_strings.dart';
import '../../utils/routes.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //  resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 90.sp,
            left: 27.sp,
            right: 27.sp,
            bottom: 74.sp,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                AppStrings.letsSignYouUp,
                style: Theme.of(context).textTheme.headline1,
              ),
              SizedBox(height: 14.h),
              Text(
                AppStrings.welcomeJoinTheCommunity,
                style: Theme.of(context).textTheme.subtitle1,q
              ),
              SizedBox(height: 57.h),
              CustomTextField(
                hintText: AppStrings.enterYourFullName,
              ),
              SizedBox(height: 35.h),
              CustomTextField(
                hintText: AppStrings.enterYourEmailAddress,
              ),
              SizedBox(height: 35.h),
              CustomTextField(
                obscureText: true,
                hintText: AppStrings.enterYourPassword,
              ),
              SizedBox(height: 117.sp),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    AppStrings.alreadyHaveAnAccount,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  GestureDetector(
                    child: Text(
                      AppStrings.signIn,
                      style: Theme.of(context).textTheme.labelMedium?.copyWith(
                            color: AppColors.whiteColor,
                          ),
                    ),
                    onTap: () {
                      Navigator.pushNamed(context, Routes.loginRoute);
                    },
                  ),
                ],
              ),
              SizedBox(height: 11.h),
              CustomButton(
                button_label: AppStrings.signUp,
                onButtonPressed: () {
                  Navigator.pushNamed(context, Routes.loginRoute);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
