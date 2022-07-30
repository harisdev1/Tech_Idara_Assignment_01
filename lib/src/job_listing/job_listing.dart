// ignore_for_file: use_function_type_syntax_for_parameters

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tech_idara_assignment_01/utils/app_strings.dart';
import 'package:tech_idara_assignment_01/utils/asset_path.dart';
import 'package:tech_idara_assignment_01/utils/routes.dart';
import 'package:tech_idara_assignment_01/widgets/custom_listtile.dart';
import 'package:tech_idara_assignment_01/widgets/custom_text_field.dart';
import '../../utils/app_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';

class JobListing extends StatelessWidget {
  const JobListing({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.fromLTRB(27.w, 70.h, 27.w, 0.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      AppStrings.welcome,
                      style: Theme.of(context).textTheme.headline4,
                    ),
                    Text(
                      AppStrings.harisBashir,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ],
                ),
                SvgPicture.asset(
                  AssetPath.icon1,
                  width: 30,
                  height: 30,
                  color: AppColors.whiteColor,
                ),
              ],
            ),
            SizedBox(height: 19.h),
            CustomTextField(
              fieldHeight: 56.sp,
              hintText: AppStrings.searchKeywords,
              isIconVisible: true,
              icon: Icons.search,
              verticalPadding: 15.sp,
              borderRadius: 10.w,
            ),
            SizedBox(
              height: 26.h,
            ),
            _jobsListWidget(),
          ],
        ),
      ),
      floatingActionButton: _addJobButtonWidget(context),
    );
  }
}

//---------------Jobs List-----------------

List<Widget> jobList = List<Widget>.generate(
  20,
  (i) => const CustomListTile(
    title: 'Flutter Developer Required',
    subtitle: 'karachi,pakistan',
  ),
);

//-------------- Add Job Button ---------

Widget _addJobButtonWidget(BuildContext context) => FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, Routes.addJobRoute);
      },
      backgroundColor: AppColors.whiteColor,
      child: SvgPicture.asset(
        AssetPath.icon2,
        width: 20,
        height: 20,
        color: AppColors.blackColor,
      ),
    );

//---------------- List View--------------

Widget _jobsListWidget() => Expanded(
      child: ListView.separated(
        padding: const EdgeInsets.only(top: 0),
        shrinkWrap: true,
        itemCount: jobList.length,
        itemBuilder: (BuildContext context, int index) {
          return jobList[index];
        },
        separatorBuilder: (BuildContext context, int index) {
          return const Divider();
        },
      ),
    );
