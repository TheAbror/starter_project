import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:starter_project/core/colors/app_colors.dart';

class SearchSettings extends StatelessWidget {
  final VoidCallback? onTap;

  const SearchSettings({
    Key? key,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 48.h,
        width: 48.h,
        padding: EdgeInsets.all(12.r),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.onBackground,
          borderRadius: BorderRadius.circular(12.r),
          border: Border.all(color: AppColors.stroke, width: 0.33.w),
        ),
        child: SvgPicture.asset(
          'assets/icons/staff_icons/setting_icon.svg',
          height: 24.w,
          width: 24.w,
        ),
      ),
    );
  }
}
