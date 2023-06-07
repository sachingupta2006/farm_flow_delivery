import 'package:farm_flow_delivery/Utils/texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../Utils/colors.dart';
import '../Utils/sized_box.dart';
import 'Order/ongoingorderdata.dart';
import 'Order/ordersmain.dart';

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
            InkWell(
              onTap: (){
                mapBottomSheet();
              },
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                child: Image.asset("assets/images/map.png",
                  fit: BoxFit.fill,
                ),
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

  mapBottomSheet() {
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
          margin: EdgeInsets.symmetric(horizontal: 20.w, vertical: 18.h),
          child: Padding(
            padding: EdgeInsets.only(
                bottom: MediaQuery.of(context).viewInsets.bottom),
            child: ListView.builder(
              shrinkWrap: true,
              physics: BouncingScrollPhysics(),
              itemCount: ongoingOrderMainData.length,
              itemBuilder: (_, index) {
                return Row(
                  children: [
                    CircleAvatar(
                      radius: 15.h,
                      backgroundColor: AppColors.buttoncolour,
                      child: CircleAvatar(
                        radius: 14.h,
                        backgroundColor: AppColors.white,
                        child: textblack14M((index + 1).toString()),
                      ),
                    ),
                    sizedBoxWidth(10.w),
                    Expanded(
                      child: InkWell(
                        onTap: () {
                          // Get.toNamed(ongoingOrderMainData[index]["route"]);
                        },
                        child: OngoingOrderMainTile(
                            ongoingOrderMainData[index]["image"],
                            ongoingOrderMainData[index]["name"],
                            ongoingOrderMainData[index]["number"],
                            ongoingOrderMainData[index]["location"]),
                      ),
                    ),
                  ],
                );
              },
            ),
            
            // Column(
            //   mainAxisSize: MainAxisSize.min,
            //   mainAxisAlignment: MainAxisAlignment.start,
            //   crossAxisAlignment: CrossAxisAlignment.start,
            //   children: [
            //     OngoingOrderMainTile()
            //   ],
            // ),
          ),
        );
      },
    );
  }

}