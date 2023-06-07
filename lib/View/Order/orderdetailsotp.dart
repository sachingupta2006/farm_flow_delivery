import 'package:farm_flow_delivery/Common/custom_appbar.dart';
import 'package:farm_flow_delivery/Common/custom_button.dart';
import 'package:farm_flow_delivery/Utils/colors.dart';
import 'package:farm_flow_delivery/Utils/sized_box.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dash/flutter_dash.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class Orderdetailsotp extends StatefulWidget {
  const Orderdetailsotp({super.key});

  @override
  State<Orderdetailsotp> createState() => _OrderdetailsotpState();
}

class _OrderdetailsotpState extends State<Orderdetailsotp> {
  bool received = true;
  bool picked = true;
  bool out = true;
  bool delivered = false;
  TextEditingController pincode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: customAppBar(text: "Order Details"),
        backgroundColor: Color(0xFFFFFFFF),
        elevation: 0,
        automaticallyImplyLeading: false,
        titleSpacing: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(
                  left: 16.w, right: 16.w, top: 25.h, bottom: 25.h),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Farmer Name",
                        style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff141414),
                        ),
                      ),
                    ],
                  ),
                  sizedBoxHeight(4.h),
                  ContactTextformfield(
                    hintText: "Kevin",
                    readonly: true,
                  ),
                  sizedBoxHeight(10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Assigned Sales Rep",
                        style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff141414),
                        ),
                      ),
                    ],
                  ),
                  sizedBoxHeight(4.h),
                  ContactTextformfield(
                    hintText: "Seamus Ryan",
                    readonly: true,
                  ),
                  sizedBoxHeight(10.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Address",
                        style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff141414),
                        ),
                      ),
                    ],
                  ),
                  sizedBoxHeight(4.h),
                  TextFormField(
                    readOnly: true,
                    style: TextStyle(fontSize: 16.sp),
                    cursorColor: const Color(0xFF3B3F43),
                    autovalidateMode: AutovalidateMode.onUserInteraction,
                    decoration: InputDecoration(
                      // errorStyle: TextStyle(fontSize: 16.sp),
                      contentPadding: EdgeInsets.all(17.h),
                      filled: true,
                      fillColor: Color(0xFFF1F1F1),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide(
                            color: Color(0xFF707070).withOpacity(0), width: 1),
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide(
                            color: Color(0xFF707070).withOpacity(0), width: 1),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                        borderSide: BorderSide(
                            color: Color(0xFF707070).withOpacity(0), width: 1),
                      ),
                      // errorBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(8),
                      //   borderSide:
                      //       const BorderSide(color: Colors.red, width: 1),
                      // ),
                      // focusedErrorBorder: OutlineInputBorder(
                      //   borderRadius: BorderRadius.circular(8),
                      //   borderSide:
                      //       const BorderSide(color: Colors.red, width: 1),
                      // ),
                      hintStyle: TextStyle(
                          color: const Color(0xFF4D4D4D), fontSize: 16.sp),
                      hintText: "Address",
                    ),
                    minLines: 5,
                    maxLines: null,
                    // validator: (value) {
                    //   if (value!.isEmpty) {
                    //     return 'Message is required';
                    //   }
                    //   return null;
                    // },
                  ),
                  sizedBoxHeight(12.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Product list",
                        style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff141414),
                        ),
                      ),
                    ],
                  ),
                  sizedBoxHeight(14.h),
                  SizedBox(
                    width: 358.w,
                    child: Card(
                      color: Color(0xffF1F1F1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 22.w, right: 16.w, top: 8.h, bottom: 13.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Pre-Calver Gain Gold",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff141414),
                                      fontFamily: "Poppins"),
                                ),
                                sizedBoxHeight(3.h),
                                Text(
                                  "€ 500",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff141414),
                                      fontFamily: "Poppins"),
                                ),
                                sizedBoxHeight(3.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 50,
                                      child: Text("5 Lbs",
                                          style: GoogleFonts.poppins(
                                            fontSize: 14.sp,
                                            color: Color(0xff4D4D4D),
                                          )),
                                    ),
                                    sizedBoxWidth(64.w),
                                    Text(
                                      "Quantity : 1000",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.sp,
                                          color: Color(0xff0E5F02),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            sizedBoxWidth(30.w),
                            Image.asset(
                              "assets/images/orderred.png",
                              width: 49.w,
                              height: 87.h,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  sizedBoxHeight(19.h),
                  SizedBox(
                    width: 358.w,
                    child: Card(
                      color: Color(0xffF1F1F1),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Padding(
                        padding: EdgeInsets.only(
                            left: 22.w, right: 16.w, top: 8.h, bottom: 13.h),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Agrofeed Ruminant Feed",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff141414),
                                      fontFamily: "Poppins"),
                                ),
                                sizedBoxHeight(3.h),
                                Text(
                                  "€ 500",
                                  style: TextStyle(
                                      fontSize: 16.sp,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xff141414),
                                      fontFamily: "Poppins"),
                                ),
                                sizedBoxHeight(3.h),
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    SizedBox(
                                      width: 50,
                                      child: Text("5 Lbs",
                                          style: GoogleFonts.poppins(
                                            fontSize: 14.sp,
                                            color: Color(0xff4D4D4D),
                                          )),
                                    ),
                                    sizedBoxWidth(64.w),
                                    Text(
                                      "Quantity : 1200",
                                      style: GoogleFonts.poppins(
                                          fontSize: 16.sp,
                                          color: Color(0xff0E5F02),
                                          fontWeight: FontWeight.w500),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            sizedBoxWidth(30.w),
                            Image.asset(
                              "assets/images/orderyellow.png",
                              // "assets/images/mail.png",
                              width: 49.w,
                              height: 87.h,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  sizedBoxHeight(21.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Delivery Details",
                        style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff141414),
                        ),
                      ),
                    ],
                  ),
                  sizedBoxHeight(15.h),
                  Padding(
                    padding: EdgeInsets.only(left: 17.w),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          // crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sizedBoxHeight(8.h),
                            CircleAvatar(
                              radius: 17.h,
                              backgroundColor: AppColors.buttoncolour,
                              child: CircleAvatar(
                                backgroundColor: AppColors.white,
                                radius: 16.h,
                                child: CircleAvatar(
                                    radius: 11.h,
                                    backgroundColor: AppColors.buttoncolour,
                                    child: Image.asset(
                                      "assets/images/location.png",
                                      width: 8.w,
                                      height: 11.h,
                                    )),
                              ),
                            ),
                            Dash(
                                direction: Axis.vertical,
                                length: 25,
                                dashLength: 49,
                                dashGap: 0,
                                dashColor: Color(0XFF0E5F02)),
                            status(),
                            Dash(
                                direction: Axis.vertical,
                                length: 25,
                                dashLength: 49,
                                dashGap: 0,
                                dashColor: Color(0XFF0E5F02)),
                            status(),
                            Dash(
                                direction: Axis.vertical,
                                length: 25,
                                dashLength: 39,
                                dashGap: 0,
                                dashColor: Color(0XFF0E5F02)),
                            status(),
                            Dash(
                                direction: Axis.vertical,
                                length: 25,
                                dashLength: 39,
                                dashGap: 0,
                                dashColor: Color(0XFF0E5F02)),
                            status(),
                          ],
                        ),
                        sizedBoxWidth(15.w),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            sizedBoxHeight(5.h),
                            Text("Warehouse",
                                style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff141414),
                                )),
                            Text("Lorem Ipsum is a dummy text",
                                style: GoogleFonts.poppins(
                                  color: Color(0xff4D4D4D),
                                  fontWeight: FontWeight.w300,
                                  fontSize: 14.sp,
                                )),
                            sizedBoxHeight(35.h),
                            Text("Order Recevied",
                                style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff141414),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      received = !received;
                                    });
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: received
                                            ? AppColors.buttoncolour
                                            : AppColors.white,
                                        borderRadius: BorderRadius.circular(3),
                                        border: Border.all(
                                            width: 2,
                                            color: AppColors.buttoncolour),
                                      ),
                                      child: Icon(
                                        Icons.check,
                                        color: AppColors.white,
                                        size: 12,
                                      )),
                                ),
                                sizedBoxWidth(5.w),
                                Text("Mark as completed",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                        color: Color(0xff141414),
                                        fontWeight: FontWeight.w300)),
                              ],
                            ),
                            sizedBoxHeight(40.h),
                            Text("Order Picked",
                                style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff141414),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      picked = !picked;
                                    });
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: picked
                                            ? AppColors.buttoncolour
                                            : AppColors.white,
                                        borderRadius: BorderRadius.circular(3),
                                        border: Border.all(
                                            width: 2,
                                            color: AppColors.buttoncolour),
                                      ),
                                      child: Icon(
                                        Icons.check,
                                        color: AppColors.white,
                                        size: 12,
                                      )),
                                ),
                                sizedBoxWidth(5.w),
                                Text("Mark as completed",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                        color: Color(0xff141414),
                                        fontWeight: FontWeight.w300)),
                              ],
                            ),
                            sizedBoxHeight(27.h),
                            Text("Your Order is out",
                                style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff141414),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      out = !out;
                                    });
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: out
                                            ? AppColors.buttoncolour
                                            : AppColors.white,
                                        borderRadius: BorderRadius.circular(3),
                                        border: Border.all(
                                            width: 2,
                                            color: AppColors.buttoncolour),
                                      ),
                                      child: Icon(
                                        Icons.check,
                                        color: AppColors.white,
                                        size: 12,
                                      )),
                                ),
                                sizedBoxWidth(5.w),
                                Text("Mark as completed",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                        color: Color(0xff141414),
                                        fontWeight: FontWeight.w300)),
                              ],
                            ),
                            sizedBoxHeight(30.h),
                            Text("Order Delivered",
                                style: GoogleFonts.poppins(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.w400,
                                  color: Color(0xff141414),
                                )),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      delivered = !delivered;
                                    });
                                  },
                                  child: Container(
                                      decoration: BoxDecoration(
                                        color: delivered
                                            ? AppColors.buttoncolour
                                            : AppColors.white,
                                        borderRadius: BorderRadius.circular(3),
                                        border: Border.all(
                                            width: 2,
                                            color: AppColors.buttoncolour),
                                      ),
                                      child: Icon(
                                        Icons.check,
                                        color: AppColors.white,
                                        size: 12,
                                      )),
                                ),
                                sizedBoxWidth(5.w),
                                Text("Mark as completed",
                                    style: GoogleFonts.poppins(
                                        fontSize: 12.sp,
                                        color: Color(0xff141414),
                                        fontWeight: FontWeight.w300)),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  sizedBoxHeight(29.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Text(
                        "Enter OTP",
                        style: GoogleFonts.poppins(
                          fontSize: 18.sp,
                          fontWeight: FontWeight.w500,
                          color: Color(0xff141414),
                        ),
                      ),
                    ],
                  ),
                  sizedBoxHeight(15.h),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: PinCodeTextField(
                      showCursor: true,
                      cursorColor: const Color(0xFF143C6D),
                      textStyle: TextStyle(
                          fontSize: 18.sp,
                          color: AppColors.black,
                          fontWeight: FontWeight.w500),
                      errorTextSpace: 30.h,
                      validator: (value) {
                        if (value != null && value.isEmpty) {
                          return "Please Enter verification code";
                        } else if (value != null && value.length < 4) {
                          return "Please Enter 4 digit Otp";
                        }
                        return null;
                      },
                      keyboardType: TextInputType.number,
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      length: 4,
                      obscureText: false,
                      animationType: AnimationType.fade,
                      pinTheme: PinTheme(
                        selectedFillColor: AppColors.greyF1F1F1,
                        inactiveFillColor: AppColors.greyF1F1F1,
                        inactiveColor: AppColors.greyF1F1F1,
                        activeColor: AppColors.greyF1F1F1,
                        selectedColor: AppColors.greyF1F1F1,
                        shape: PinCodeFieldShape.box,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(4.h),
                            topRight: Radius.circular(4.h)),
                        fieldHeight: 65.h,
                        fieldWidth: 50.w,
                        activeFillColor: AppColors.greyF1F1F1,
                      ),
                      animationDuration: const Duration(milliseconds: 300),
                      enableActiveFill: true,
                      controller: pincode,
                      onCompleted: (v) {
                        print("Completed");
                      },
                      onChanged: (value) {
                        print(value);
                        setState(() {});
                      },
                      beforeTextPaste: (text) {
                        print("Allowing to paste $text");

                        return true;
                      },
                      appContext: context,
                    ),
                  ),
                  sizedBoxHeight(52.h),
                  customButton(text: "Complete Order", onTap: () {
                    Get.toNamed("/ordercompleted");
                  }),
                  // sizedBoxHeight(90.h),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget status() {
    return CircleAvatar(
      radius: 17.h,
      backgroundColor: AppColors.buttoncolour,
      child: CircleAvatar(
        backgroundColor: AppColors.white,
        radius: 16.h,
        child: CircleAvatar(
          radius: 11.h,
          backgroundColor: AppColors.buttoncolour,
          child: Icon(
            Icons.check,
            color: AppColors.white,
            size: 12,
          ),
        ),
      ),
    );
  }
}

class ContactTextformfield extends StatelessWidget {
  ContactTextformfield({
    Key? key,
    this.validator,
    this.inputFormatters,
    required this.hintText,
    this.validatorText,
    this.textEditingController,
    this.leadingIcon,
    this.onTap,
    this.readonly = false,
    this.isInputPassword = false,
    this.outlineColor = const Color(0xFFFFB600),
    this.texttype,
  }) : super(key: key);

  final dynamic validator;
  final TextEditingController? textEditingController;
  final String hintText;
  final String? validatorText;
  final Widget? leadingIcon;
  final bool isInputPassword;
  void Function()? onTap;
  final bool readonly;
  final dynamic inputFormatters;
  final Color outlineColor;

  final TextInputType? texttype;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
        textAlignVertical: TextAlignVertical.center,
        style: TextStyle(
          fontSize: 16.sp,
        ),
        readOnly: readonly,
        cursorColor: const Color(0xFF3B3F43),
        autovalidateMode: AutovalidateMode.onUserInteraction,
        controller: textEditingController,
        onTap: onTap,
        decoration: InputDecoration(
          errorStyle: TextStyle(fontSize: 16.sp),
          isCollapsed: true,
          suffixIconConstraints: const BoxConstraints(),
          contentPadding: EdgeInsets.all(17.h),
          filled: true,
          fillColor: Color(0xFFF1F1F1),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide:
                BorderSide(color: Color(0xFF707070).withOpacity(0), width: 1),
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide:
                BorderSide(color: Color(0xFF707070).withOpacity(0), width: 1),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8.r),
            borderSide:
                BorderSide(color: Color(0xFF707070).withOpacity(0), width: 1),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(color: Colors.red, width: 1),
          ),
          hintStyle: TextStyle(
              color: const Color(0xFF4D4D4D),
              fontSize: 16.sp,
              fontFamily: "Roboto"),
          hintText: hintText,
          prefixIcon: leadingIcon == null
              ? null
              : Padding(
                  padding: const EdgeInsets.only(left: 14, right: 14),
                  child: leadingIcon!,
                ),
          prefixIconConstraints: const BoxConstraints(minWidth: 20),
        ),
        keyboardType: texttype,
        validator: validator,
        inputFormatters: inputFormatters);
  }
}
