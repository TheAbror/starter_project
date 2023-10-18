import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:starter_project/core/colors/app_colors.dart';

class BottomSheetListMultipleChoiceItem<T> extends StatefulWidget {
  final String itemTitle;
  final bool isSelected;
  final ValueSetter<bool>? onChanged;

  const BottomSheetListMultipleChoiceItem({
    Key? key,
    required this.itemTitle,
    required this.isSelected,
    this.onChanged,
  }) : super(key: key);

  @override
  State<BottomSheetListMultipleChoiceItem<T>> createState() => _BottomSheetListMultipleChoiceItemState<T>();
}

class _BottomSheetListMultipleChoiceItemState<T> extends State<BottomSheetListMultipleChoiceItem<T>> {
  late bool _isSelected;

  @override
  void initState() {
    super.initState();

    _isSelected = widget.isSelected;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        setState(() {
          _isSelected = !_isSelected;
          if (widget.onChanged != null) {
            widget.onChanged!(_isSelected);
          }
        });
      },
      child: Row(
        children: [
          Text(
            widget.itemTitle,
            style: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w500,
            ),
          ),
          const Spacer(),
          Theme(
            data: ThemeData(unselectedWidgetColor: AppColors.primary),
            child: Checkbox(
              value: _isSelected,
              onChanged: (value) {
                setState(() {
                  _isSelected = value ?? false;
                  if (widget.onChanged != null) {
                    widget.onChanged!(_isSelected);
                  }
                });
              },
              activeColor: AppColors.success,
            ),
          ),
        ],
      ),
    );
  }
}
