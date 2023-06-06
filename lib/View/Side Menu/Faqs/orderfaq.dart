import 'package:farm_flow_delivery/Utils/colors.dart';
import 'package:farm_flow_delivery/Utils/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class Faqscontent extends StatefulWidget {
  const Faqscontent({super.key});

  @override
  State<Faqscontent> createState() => _FaqscontentState();
}

class _FaqscontentState extends State<Faqscontent> {
  bool isExpanded = true;
  bool isExpanded2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(top: 20.h, left: 16.w, right: 16.w),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GestureDetector(
                    onTap: () {
                      Get.back();
                    },
                    child: CircleAvatar(
                      radius: 20.h,
                      backgroundColor: Color(0XFFF1F1F1),
                      child: Center(
                        child: Padding(
                          padding: EdgeInsets.only(left: 8.w),
                          child: Icon(
                            Icons.arrow_back_ios,
                            size: 25.h,
                            color: Color(0XFF141414),
                          ),
                        ),
                      ),
                    ),
                  ),
                  sizedBoxWidth(15.w),
                  Text(
                    "FAQ's",
                    style: TextStyle(
                      color: Color(0XFF141414),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            sizedBoxHeight(26.h),
            faq1(),
            sizedBoxHeight(23.h),
            faq2(),
            sizedBoxHeight(23.h),
            faq3(),
            sizedBoxHeight(23.h),
            faq4(),
            sizedBoxHeight(23.h),
            faq5(),
            sizedBoxHeight(23.h),
            faq6(),
            sizedBoxHeight(23.h),
            faq7(),
            sizedBoxHeight(23.h),
            faq8(),
            sizedBoxHeight(23.h),
          ],
        ),
      )),
    );
  }

  Widget faq1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        width: 358.w,
        // height: 70.h,
        decoration: BoxDecoration(
          color: AppColors.greyF1F1F1,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: ExpansionTile(
          childrenPadding:
              EdgeInsets.only(left: 0.w, right: 0.w, bottom: 8.h, top: 10.h),
          initiallyExpanded: isExpanded,
          onExpansionChanged: (bool expanding) {
            setState(() {
              isExpanded = expanding;
            });
          },
          trailing: Image.asset(
            isExpanded
                ? "assets/images/faqsminus.png"
                : "assets/images/faqsplus.png",
            width: 30.w,
            height: 30.h,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What Is Feed Flow?",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xFF141414),
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          children: <Widget>[
            Container(
              // width: 370.w,
              height: 30.h,
              decoration: BoxDecoration(
                color: AppColors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 15.h),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xFF4D4D4D),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget faq2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        width: 358.w,
        // height: 70.h,
        decoration: BoxDecoration(
          color: AppColors.greyF1F1F1,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: ExpansionTile(
          childrenPadding:
              EdgeInsets.only(left: 0.w, right: 0.w, bottom: 8.h, top: 10.h),
          initiallyExpanded: isExpanded2,
          onExpansionChanged: (bool expanding) {
            setState(() {
              isExpanded2 = expanding;
            });
          },
          trailing: Image.asset(
            isExpanded2
                ? "assets/images/faqsminus.png"
                : "assets/images/faqsplus.png",
            width: 30.w,
            height: 30.h,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What Is Feed Flow?",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xFF141414),
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          children: <Widget>[
            Container(
              width: 370.w,
              height: 30.h,
              decoration: BoxDecoration(
                color: AppColors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 15.h),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xFF4D4D4D),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget faq3() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        width: 358.w,
        // height: 70.h,
        decoration: BoxDecoration(
          color: AppColors.greyF1F1F1,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: ExpansionTile(
          childrenPadding:
              EdgeInsets.only(left: 0.w, right: 0.w, bottom: 8.h, top: 10.h),
          initiallyExpanded: isExpanded2,
          onExpansionChanged: (bool expanding) {
            setState(() {
              isExpanded2 = expanding;
            });
          },
          trailing: Image.asset(
            isExpanded2
                ? "assets/images/faqsminus.png"
                : "assets/images/faqsplus.png",
            width: 30.w,
            height: 30.h,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What Is Feed Flow?",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xFF141414),
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          children: <Widget>[
            Container(
              width: 370.w,
              height: 30.h,
              decoration: BoxDecoration(
                color: AppColors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 15.h),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xFF4D4D4D),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget faq4() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        width: 358.w,
        // height: 70.h,
        decoration: BoxDecoration(
          color: AppColors.greyF1F1F1,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: ExpansionTile(
          childrenPadding:
              EdgeInsets.only(left: 0.w, right: 0.w, bottom: 8.h, top: 10.h),
          initiallyExpanded: isExpanded2,
          onExpansionChanged: (bool expanding) {
            setState(() {
              isExpanded2 = expanding;
            });
          },
          trailing: Image.asset(
            isExpanded2
                ? "assets/images/faqsminus.png"
                : "assets/images/faqsplus.png",
            width: 30.w,
            height: 30.h,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What Is Feed Flow?",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xFF141414),
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          children: <Widget>[
            Container(
              width: 370.w,
              height: 30.h,
              decoration: BoxDecoration(
                color: AppColors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 15.h),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xFF4D4D4D),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget faq5() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        width: 358.w,
        // height: 70.h,
        decoration: BoxDecoration(
          color: AppColors.greyF1F1F1,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: ExpansionTile(
          childrenPadding:
              EdgeInsets.only(left: 0.w, right: 0.w, bottom: 8.h, top: 10.h),
          initiallyExpanded: isExpanded2,
          onExpansionChanged: (bool expanding) {
            setState(() {
              isExpanded2 = expanding;
            });
          },
          trailing: Image.asset(
            isExpanded2
                ? "assets/images/faqsminus.png"
                : "assets/images/faqsplus.png",
            width: 30.w,
            height: 30.h,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What Is Feed Flow?",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xFF141414),
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          children: <Widget>[
            Container(
              width: 370.w,
              height: 30.h,
              decoration: BoxDecoration(
                color: AppColors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 15.h),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xFF4D4D4D),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget faq6() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        width: 358.w,
        // height: 70.h,
        decoration: BoxDecoration(
          color: AppColors.greyF1F1F1,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: ExpansionTile(
          childrenPadding:
              EdgeInsets.only(left: 0.w, right: 0.w, bottom: 8.h, top: 10.h),
          initiallyExpanded: isExpanded2,
          onExpansionChanged: (bool expanding) {
            setState(() {
              isExpanded2 = expanding;
            });
          },
          trailing: Image.asset(
            isExpanded2
                ? "assets/images/faqsminus.png"
                : "assets/images/faqsplus.png",
            width: 30.w,
            height: 30.h,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What Is Feed Flow?",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xFF141414),
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          children: <Widget>[
            Container(
              width: 370.w,
              height: 30.h,
              decoration: BoxDecoration(
                color: AppColors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 15.h),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xFF4D4D4D),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget faq7() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        width: 358.w,
        // height: 70.h,
        decoration: BoxDecoration(
          color: AppColors.greyF1F1F1,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: ExpansionTile(
          childrenPadding:
              EdgeInsets.only(left: 0.w, right: 0.w, bottom: 8.h, top: 10.h),
          initiallyExpanded: isExpanded2,
          onExpansionChanged: (bool expanding) {
            setState(() {
              isExpanded2 = expanding;
            });
          },
          trailing: Image.asset(
            isExpanded2
                ? "assets/images/faqsminus.png"
                : "assets/images/faqsplus.png",
            width: 30.w,
            height: 30.h,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What Is Feed Flow?",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xFF141414),
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          children: <Widget>[
            Container(
              width: 370.w,
              height: 30.h,
              decoration: BoxDecoration(
                color: AppColors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 15.h),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xFF4D4D4D),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  Widget faq8() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: Container(
        width: 358.w,
        // height: 70.h,
        decoration: BoxDecoration(
          color: AppColors.greyF1F1F1,
          borderRadius: BorderRadius.circular(10.r),
        ),
        child: ExpansionTile(
          childrenPadding:
              EdgeInsets.only(left: 0.w, right: 0.w, bottom: 8.h, top: 10.h),
          initiallyExpanded: isExpanded2,
          onExpansionChanged: (bool expanding) {
            setState(() {
              isExpanded2 = expanding;
            });
          },
          trailing: Image.asset(
            isExpanded2
                ? "assets/images/faqsminus.png"
                : "assets/images/faqsplus.png",
            width: 30.w,
            height: 30.h,
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "What Is Feed Flow?",
                style: TextStyle(
                    fontSize: 16.sp,
                    color: Color(0xFF141414),
                    fontWeight: FontWeight.w600),
              ),
            ],
          ),
          children: <Widget>[
            Container(
              width: 370.w,
              height: 30.h,
              decoration: BoxDecoration(
                color: AppColors.white,
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 14.w, vertical: 15.h),
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500",
                style: TextStyle(
                  fontSize: 16.sp,
                  color: Color(0xFF4D4D4D),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
