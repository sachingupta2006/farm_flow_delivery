import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

Widget CustomButton({void Function()? onTap, required String text}){
  return InkWell(
    onTap: onTap,
    child: Container(
      height: 50.h,
      width: double.infinity,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(25.h),
        color: AppColors.buttoncolour
      ),
      child: Center(
        child: Text(text,
          style: TextStyle(
            color: AppColors.white,
            fontSize: 18.sp
          ),
        ),
      ),
    ),
  );

}