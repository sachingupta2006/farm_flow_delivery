import 'package:farm_flow_delivery/Common/custom_appbar.dart';
import 'package:farm_flow_delivery/Utils/colors.dart';
import 'package:farm_flow_delivery/Utils/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  buildcontentcalldialog(context) {
    return showDialog(
      context: context,
      builder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 16),
            backgroundColor: Get.isDarkMode ? Colors.black : Color(0XFFFFFFFF),
            //contentPadding: EdgeInsets.fromLTRB(96, 32, 96, 28),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              side: BorderSide(
                  color: Get.isDarkMode ? Colors.grey : Color(0XFFFFFFFF)),
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //sizedBoxHeight(32.h),
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    "assets/images/call.svg",
                    width: 35.w,
                    height: 35.h,
                  ),
                ),
                SizedBox(
                  height: 22.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Are you sure you want to call?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),

                sizedBoxHeight(21.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 48.h,
                        width: 140.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.h),
                            color: AppColors.buttoncolour),
                        child: Center(
                          child: Text(
                            "Yes",
                            style: TextStyle(
                                color: AppColors.white, fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ),
                    sizedBoxWidth(28.w),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 48.h,
                        width: 140.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0XFF0E5F02)),
                            borderRadius: BorderRadius.circular(10.h),
                            color: AppColors.white),
                        child: Center(
                          child: Text(
                            "No",
                            style: TextStyle(
                                color: AppColors.buttoncolour, fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildcontentmaildialog(context) {
    return showDialog(
      context: context,
      builder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 16),
            backgroundColor: Get.isDarkMode ? Colors.black : Color(0XFFFFFFFF),
            //contentPadding: EdgeInsets.fromLTRB(96, 32, 96, 28),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              side: BorderSide(
                  color: Get.isDarkMode ? Colors.grey : Color(0XFFFFFFFF)),
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                //sizedBoxHeight(32.h),
                Align(
                  alignment: Alignment.center,
                  child: SvgPicture.asset(
                    "assets/images/sendmail.svg",
                    width: 75.w,
                    height: 75.h,
                  ),
                ),
                SizedBox(
                  height: 22.h,
                ),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    "Are you sure you want to mail?",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Color(0xFF4D4D4D),
                      fontSize: 22.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),

                sizedBoxHeight(21.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {},
                      child: Container(
                        height: 48.h,
                        width: 140.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.h),
                            color: AppColors.buttoncolour),
                        child: Center(
                          child: Text(
                            "Yes",
                            style: TextStyle(
                                color: AppColors.white, fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ),
                    sizedBoxWidth(28.w),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 48.h,
                        width: 140.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: Color(0XFF0E5F02)),
                            borderRadius: BorderRadius.circular(10.h),
                            color: AppColors.white),
                        child: Center(
                          child: Text(
                            "No",
                            style: TextStyle(
                                color: AppColors.buttoncolour, fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  buildcontentdialog() {
    return showDialog(
      context: context,
      builder: (context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          AlertDialog(
            insetPadding: EdgeInsets.symmetric(horizontal: 16),
            backgroundColor: Get.isDarkMode ? Colors.black : Color(0XFFFFFFFF),
            //    contentPadding: EdgeInsets.fromLTRB(96, 32, 96, 28),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              side: BorderSide(
                  color: Get.isDarkMode ? Colors.grey : Color(0XFFFFFFFF)),
            ),
            content: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                //sizedBoxHeight(32.h),
                Image.asset(
                  "assets/images/person.png",
                  width: 76.w,
                  height: 76.h,
                ),
                SizedBox(
                  height: 11.h,
                ),
                Text(
                  "Roma dsouza",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 22.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/images/call.svg",
                      width: 19.w,
                      height: 18.h,
                    ),
                    sizedBoxWidth(5.w),
                    Text(
                      "0225845855",
                      style: TextStyle(
                        color: Color(0XFF585858),
                        fontSize: 20.sp,
                      ),
                    )
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SvgPicture.asset(
                      "assets/images/mail.svg",
                    ),
                    sizedBoxWidth(5.w),
                    Text(
                      "romad@gmail.com",
                      style: TextStyle(
                        color: Color(0XFF585858),
                        fontSize: 20.sp,
                      ),
                    )
                  ],
                ),
                sizedBoxHeight(25.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        buildcontentcalldialog(context);
                      },
                      child: Container(
                        height: 48.h,
                        width: 140.w,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10.h),
                            color: AppColors.buttoncolour),
                        child: Center(
                          child: Text(
                            "Call",
                            style: TextStyle(
                                color: AppColors.white, fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ),
                    sizedBoxWidth(15),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                        buildcontentmaildialog(context);
                      },
                      child: Container(
                        height: 48.h,
                        width: 140.w,
                        decoration: BoxDecoration(
                            border: Border.all(color: AppColors.buttoncolour),
                            borderRadius: BorderRadius.circular(10.h),
                            color: AppColors.white),
                        child: Center(
                          child: Text(
                            "Mail",
                            style: TextStyle(
                                color: AppColors.black, fontSize: 18.sp),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  int isConnect = 0;
  int isConnect2 = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        // backgroundColor: AppColors.white,
        title: customAppBar(text: "Contacts"),

        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
        // shadowColor: Colors.black,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
      ),
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(left: 16, right: 16, top: 25, bottom: 25),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Sales Rep",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.sp),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    buildcontentdialog();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                          color: Color(0XFf0E5F02).withOpacity(1), width: 1),
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 11.h,
                        ),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 16.w),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 3,
                                      color: isConnect == 0
                                          ? Colors.amber
                                          : Colors.white),
                                  borderRadius:
                                      BorderRadius.circular(100), //<-- SEE HERE
                                ),
                                child: Image.asset(
                                  "assets/images/person.png",
                                  // image,
                                  // "assets/images/connect2.png",
                                  width: 66.w,
                                  height: 66.w,
                                ),
                              ),
                            ),

                            sizedBoxWidth(8.w),

                            SizedBox(
                              width: 195.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  RichText(
                                    overflow: TextOverflow.ellipsis,
                                    text: TextSpan(
                                      text: "Seamus Ryan",
                                      // "Roma dsouza",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/images/call.svg",
                                        width: 13.w,
                                        height: 13.w,
                                      ),
                                      sizedBoxWidth(5.w),
                                      RichText(
                                        text: TextSpan(
                                          text: "0861238765",
                                          // "0225845855",
                                          style: TextStyle(
                                            color: Color(0XFF585858),
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 3.h),
                                        child: SvgPicture.asset(
                                          "assets/images/mail.svg",
                                          width: 13.w,
                                          height: 13.w,
                                        ),
                                      ),
                                      sizedBoxWidth(5.w),
                                      RichText(
                                        text: TextSpan(
                                          text: "roma@gmail.com",
                                          // "Canada",
                                          style: TextStyle(
                                            color: Color(0XFF585858),
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            // sizedBoxWidth(16.w),

                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    icon: isConnect == 0
                                        // _isChecked
                                        ? CircleAvatar(
                                            radius: 25.h,
                                            backgroundColor: Color(0XFFF1F1F1),
                                            child: Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                          )
                                        : Icon(
                                            Icons.star_border,
                                            color: Color(0XFF707070),
                                          ),
                                    onPressed: () {
                                      setState(() {
                                        isConnect == 0
                                            ? isConnect = 1
                                            : isConnect = 0;
                                        // _isChecked = !_isChecked;
                                      });
                                    },
                                  ),
                                ]),

                            // SvgPicture.asset(
                            //   "assets/images/starconnect.svg",
                            //   width: 38.w,
                            //   height: 38.w,
                            // ),

                            // CircleAvatar(
                            //   radius: 25.h,
                            //   backgroundColor: Color(0XFFF1F1F1),
                            //   child: Center(
                            //     child: Icon(
                            //       Icons.star,
                            //       size: 35.h,
                            //       color: Color.fromARGB(255, 248, 211, 2),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                        SizedBox(
                          height: 11.h,
                        )
                      ],
                    ),
                  ),
                ),
                sizedBoxHeight(15),
                InkWell(
                  onTap: () {
                    buildcontentdialog();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                          color: Color(0XFf0E5F02).withOpacity(1), width: 1),
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 11.h,
                        ),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 16.w),
                              child: Container(
                                decoration: BoxDecoration(
                                  border: Border.all(
                                      width: 3,
                                      color: isConnect2 == 0
                                          ? Colors.amber
                                          : Colors.white),
                                  borderRadius:
                                      BorderRadius.circular(100), //<-- SEE HERE
                                ),
                                child: Image.asset(
                                  "assets/images/person.png",
                                  // image,
                                  // "assets/images/connect2.png",
                                  width: 66.w,
                                  height: 66.w,
                                ),
                              ),
                            ),

                            sizedBoxWidth(8.w),

                            SizedBox(
                              width: 195.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  RichText(
                                    overflow: TextOverflow.ellipsis,
                                    text: TextSpan(
                                      text: "Sean Mcgrath",
                                      // "Roma dsouza",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/images/call.svg",
                                        width: 13.w,
                                        height: 13.w,
                                      ),
                                      sizedBoxWidth(5.w),
                                      RichText(
                                        text: TextSpan(
                                          text: "0861238765",
                                          // "0225845855",
                                          style: TextStyle(
                                            color: Color(0XFF585858),
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 3.h),
                                        child: SvgPicture.asset(
                                          "assets/images/mail.png",
                                          width: 13.w,
                                          height: 13.w,
                                        ),
                                      ),
                                      sizedBoxWidth(5.w),
                                      RichText(
                                        text: TextSpan(
                                          text: "ryan@gmail.com",
                                          // "Canada",
                                          style: TextStyle(
                                            color: Color(0XFF585858),
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            // sizedBoxWidth(16.w),

                            Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  IconButton(
                                    icon: isConnect2 == 0
                                        // _isChecked
                                        ? CircleAvatar(
                                            radius: 25.h,
                                            backgroundColor: Color(0XFFF1F1F1),
                                            child: Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                          )
                                        : Icon(
                                            Icons.star_border,
                                            color: Color(0XFF707070),
                                          ),
                                    onPressed: () {
                                      setState(() {
                                        isConnect2 == 0
                                            ? isConnect2 = 1
                                            : isConnect2 = 0;
                                        // _isChecked = !_isChecked;
                                      });
                                    },
                                  ),
                                ]),

                            // SvgPicture.asset(
                            //   "assets/images/starconnect.svg",
                            //   width: 38.w,
                            //   height: 38.w,
                            // ),

                            // CircleAvatar(
                            //   radius: 25.h,
                            //   backgroundColor: Color(0XFFF1F1F1),
                            //   child: Center(
                            //     child: Icon(
                            //       Icons.star,
                            //       size: 35.h,
                            //       color: Color.fromARGB(255, 248, 211, 2),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                        SizedBox(
                          height: 11.h,
                        )
                      ],
                    ),
                  ),
                ),
                sizedBoxHeight(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Co-op",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.sp),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    buildcontentdialog();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                          color: Color(0XFf0E5F02).withOpacity(1), width: 1),
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 11.h,
                        ),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 16.w),
                              child: Container(
                                // decoration: BoxDecoration(
                                //   border: Border.all(
                                //       width: 3,
                                //       color: isConnect == 0
                                //           ? Colors.amber
                                //           : Colors.white),
                                //   borderRadius:
                                //       BorderRadius.circular(100), //<-- SEE HERE
                                // ),
                                child: Image.asset(
                                  "assets/images/person.png",
                                  // image,
                                  // "assets/images/connect2.png",
                                  width: 66.w,
                                  height: 66.w,
                                ),
                              ),
                            ),

                            sizedBoxWidth(8.w),

                            SizedBox(
                              width: 195.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  RichText(
                                    overflow: TextOverflow.ellipsis,
                                    text: TextSpan(
                                      text: "Dan O Connors Limerick",
                                      // "Roma dsouza",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/images/call.svg",
                                        width: 13.w,
                                        height: 13.w,
                                      ),
                                      sizedBoxWidth(5.w),
                                      RichText(
                                        text: TextSpan(
                                          text: "0614149881",
                                          // "0225845855",
                                          style: TextStyle(
                                            color: Color(0XFF585858),
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 3.h),
                                        child: SvgPicture.asset(
                                          "assets/images/mail.svg",
                                          width: 13.w,
                                          height: 13.w,
                                        ),
                                      ),
                                      sizedBoxWidth(5.w),
                                      RichText(
                                        text: TextSpan(
                                          text: "ronaldt@gmail.com",
                                          // "Canada",
                                          style: TextStyle(
                                            color: Color(0XFF585858),
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            // sizedBoxWidth(16.w),

                            // Row(
                            //     mainAxisAlignment: MainAxisAlignment.end,
                            //     children: [
                            //       IconButton(
                            //         icon: isConnect == 0
                            //             // _isChecked
                            //             ? CircleAvatar(
                            //                 radius: 25.h,
                            //                 backgroundColor: Color(0XFFF1F1F1),
                            //                 child: Icon(
                            //                   Icons.star,
                            //                   color: Colors.amber,
                            //                 ),
                            //               )
                            //             : Icon(
                            //                 Icons.star_border,
                            //                 color: Color(0XFF707070),
                            //               ),
                            //         onPressed: () {
                            //           setState(() {
                            //             isConnect == 0
                            //                 ? isConnect = 1
                            //                 : isConnect = 0;
                            //             // _isChecked = !_isChecked;
                            //           });
                            //         },
                            //       ),
                            //     ]),

                            // SvgPicture.asset(
                            //   "assets/images/starconnect.svg",
                            //   width: 38.w,
                            //   height: 38.w,
                            // ),

                            // CircleAvatar(
                            //   radius: 25.h,
                            //   backgroundColor: Color(0XFFF1F1F1),
                            //   child: Center(
                            //     child: Icon(
                            //       Icons.star,
                            //       size: 35.h,
                            //       color: Color.fromARGB(255, 248, 211, 2),
                            //     ),
                            //   ),
                            // ),
                          ],
                        ),
                        SizedBox(
                          height: 11.h,
                        )
                      ],
                    ),
                  ),
                ),
                sizedBoxHeight(15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "Warehouse Manager",
                      style: GoogleFonts.poppins(
                        textStyle: TextStyle(
                            fontWeight: FontWeight.w500, fontSize: 18.sp),
                      ),
                    ),
                  ],
                ),
                InkWell(
                  onTap: () {
                    buildcontentdialog();
                  },
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(15)),
                      border: Border.all(
                          color: Color(0XFf0E5F02).withOpacity(1), width: 1),
                      color: Color(0xFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        SizedBox(
                          height: 11.h,
                        ),
                        Row(
                          //mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Padding(
                              padding: EdgeInsets.only(left: 16.w),
                              child: Container(
                                // decoration: BoxDecoration(
                                //   border:
                                //  Border.all(
                                //      width: 3,
                                //     color: isConnect == 0
                                //         ? Colors.amber
                                //         : Colors.white
                                //     ),
                                // borderRadius:
                                //     BorderRadius.circular(100), //<-- SEE HERE
                                // ),
                                child: Image.asset(
                                  "assets/images/person.png",
                                  // image,
                                  // "assets/images/connect2.png",
                                  width: 66.w,
                                  height: 66.w,
                                ),
                              ),
                            ),

                            sizedBoxWidth(8.w),

                            SizedBox(
                              width: 195.w,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  RichText(
                                    overflow: TextOverflow.ellipsis,
                                    text: TextSpan(
                                      text: "Abigail Laus",
                                      // "Roma dsouza",
                                      style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 16.sp,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                  ),
                                  Row(
                                    children: [
                                      SvgPicture.asset(
                                        "assets/images/call.svg",
                                        width: 13.w,
                                        height: 13.w,
                                      ),
                                      sizedBoxWidth(5.w),
                                      RichText(
                                        text: TextSpan(
                                          text: "0225845855",
                                          // "0225845855",
                                          style: TextStyle(
                                            color: Color(0XFF585858),
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                        padding: EdgeInsets.only(top: 3.h),
                                        child: SvgPicture.asset(
                                          "assets/images/mail.svg",
                                          width: 20.w,
                                          height: 20.w,
                                        ),
                                      ),
                                      sizedBoxWidth(5.w),
                                      RichText(
                                        text: TextSpan(
                                          text: "abigail@gmail.com",
                                          // "Canada",
                                          style: TextStyle(
                                            color: Color(0XFF585858),
                                            fontSize: 16.sp,
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ],
                              ),
                            ),

                            // sizedBoxWidth(16.w),

                            // Row(
                            //     mainAxisAlignment: MainAxisAlignment.end,
                            //     children: [
                            //       IconButton(
                            //         icon: isConnect == 0
                            //             // _isChecked
                            //             ? CircleAvatar(
                            //                 radius: 25.h,
                            //                 backgroundColor: Color(0XFFF1F1F1),
                            //                 child: Icon(
                            //                   Icons.star,
                            //                   color: Colors.amber,
                            //                 ),
                            //               )
                            //             : Icon(
                            //                 Icons.star_border,
                            //                 color: Color(0XFF707070),
                            //               ),
                            //         onPressed: () {
                            //           setState(() {
                            //             isConnect == 0
                            //                 ? isConnect = 1
                            //                 : isConnect = 0;
                            //             // _isChecked = !_isChecked;
                            //           });
                            //         },
                            //       ),
                            //     ]),
                          ],
                        ),
                        SizedBox(
                          height: 11.h,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
