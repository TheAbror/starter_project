import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starter_project/core/colors/app_colors.dart';

class StaffListDropDown extends StatefulWidget {
  final TextEditingController involvedUsersController;
  final VoidCallback? onTap;

  const StaffListDropDown({
    Key? key,
    required this.involvedUsersController,
    this.onTap,
  }) : super(key: key);

  @override
  State<StaffListDropDown> createState() => _StaffListDropDownState();
}

class _StaffListDropDownState extends State<StaffListDropDown> {
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onTap: widget.onTap,
      readOnly: true,
      validator: (username) {
        if (username == null || username.isEmpty) {
          return 'Please select involved users title';
        }
        return null;
      },
      controller: widget.involvedUsersController,
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
        filled: true,
        border: InputBorder.none, // Remove border color
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.stroke, width: 0.5.w),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.primary, width: 0.5.w),
          borderRadius: BorderRadius.circular(12),
        ),
        errorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.stroke, width: 0.5.w),
          borderRadius: BorderRadius.circular(12),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderSide: BorderSide(color: AppColors.stroke, width: 0.5.w),
          borderRadius: BorderRadius.circular(12),
        ),

        hintText: 'Involved Users',
        fillColor: Theme.of(context).colorScheme.surfaceTint,
        hintStyle: const TextStyle(color: AppColors.textSecondary),
        suffixIcon: const SizedBox(
          height: 24,
          width: 24,
          child: Icon(Icons.arrow_drop_down_outlined),
        ),
      ),
    );
  }
}
