import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../Utils/colors.dart';
import '../Utils/sized_box.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});

  @override
  State<MapPage> createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(
          
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Image.asset("assets/images/map.png",
                fit: BoxFit.fill,
              ),
            ),
      
            Positioned(
              top: 35.h,
              left: 16.w,
              child: GestureDetector(
                onTap: () {
                  Get.back();
                },
                child: CircleAvatar(
                    radius: 20.h,
                    backgroundColor: const Color(0XFFF1F1F1),
                    child: Center(
                      child: Padding(
                        padding: EdgeInsets.only(left: 8.w),
                        child: Icon(
                          Icons.arrow_back_ios,
                          size: 25.h,
                          color: const Color(0xFF141414),
                        ),
                      ),
                    )),
              ),
            ),
        
            Positioned(
              bottom: 35.h,
              right: 16.w,
              child: Column(
                children: [
                  Container(
                      height: 42.h,
                      width: 42.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.h),
                        color: AppColors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            blurRadius: 5.h,
                            spreadRadius: 2.h,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.layers,
                            color: AppColors.buttoncolour,
                            size: 27.h,
                          )
                          // SvgPicture.asset(
                          //   "assets/images/Settings.svg",
                          //   height: 28.h,
                          //   width: 28.h,
                          //   color: AppColors.black,
                          // ),
                        ],
                      ),
                    ),
            
                    SizedBox(height: 10.h,),
                  
                  Container(
                      height: 42.h,
                      width: 42.h,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.h),
                        color: AppColors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.shade400,
                            blurRadius: 5.h,
                            spreadRadius: 2.h,
                          )
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Icon(Icons.near_me,
                            color: AppColors.buttoncolour,
                            size: 27.h,
                          )
                          // SvgPicture.asset(
                          //   "assets/images/Settings.svg",
                          //   height: 28.h,
                          //   width: 28.h,
                          //   color: AppColors.black,
                          // ),
                        ],
                      ),
                    )
                  
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  builduploadprofile() {
    return showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(26.r),
          topRight: Radius.circular(26.r),
        ),
      ),
      builder: (context) {
        return Container(
          // height: 180.h,
          margin: EdgeInsets.symmetric(horizontal: 36.w, vertical: 26.h),
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                
              ],
            ),
          ),
        );
      },
    );
  }

}