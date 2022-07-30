// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:tech_idara_assignment_01/utils/app_strings.dart';
import '../../utils/asset_path.dart';
import '../../utils/routes.dart';
import '../../widgets/custom_button.dart';
import '../../widgets/custom_text_field.dart';

class AddJob extends StatelessWidget {
  const AddJob({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.fromLTRB(27.w, 89.h, 27.w, 59.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  SvgPicture.asset(
                    AssetPath.icon3,
                    width: 20,
                    height: 20,
                    color: Colors.white,
                  ),
                  Spacer(flex: 1),
                  Text(
                    AppStrings.addNewJob,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Spacer(flex: 4),
                ],
              ),
              SizedBox(height: 31.h),
              CustomTextField(
                hintText: AppStrings.enterpsoitionName,
              ),
              SizedBox(height: 28.h),
              CustomTextField(
                isMultiline: true,
                fieldHeight: 374.sp,
                hintText: AppStrings.describeRequirement,
              ),
              SizedBox(height: 137.h),
              CustomButton(
                button_label: AppStrings.submitJob,
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
