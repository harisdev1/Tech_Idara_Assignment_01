import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../utils/app_colors.dart';
import '../utils/asset_path.dart';
import '../utils/routes.dart';

class CustomListTile extends StatelessWidget {
  final String title, subtitle;

  const CustomListTile(
      {super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.textfieldColor,
        borderRadius: BorderRadius.circular(10),
      ),
      width: double.infinity,
      height: 122.h,
      padding: const EdgeInsets.fromLTRB(25, 20, 10, 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontWeight: FontWeight.w600,
                      fontSize: 15.sp,
                      color: AppColors.whiteColor,
                    ),
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.labelMedium!.copyWith(
                      fontSize: 12.sp,
                    ),
              ),
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.pushNamed(context, Routes.editJobRoute);
            },
            child: SvgPicture.asset(
              AssetPath.edit,
              width: 20,
              height: 20,
              color: AppColors.whiteColor,
            ),
          ),
          SvgPicture.asset(
            AssetPath.trash,
            width: 20,
            height: 20,
            color: Colors.red,
          ),
        ],
      ),
    );
  }
}
