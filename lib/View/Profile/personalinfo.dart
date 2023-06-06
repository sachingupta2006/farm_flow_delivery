import 'dart:io';
import 'package:another_flushbar/flushbar.dart';
import 'package:farm_flow_delivery/Common/CommonTextFormField.dart';
import 'package:farm_flow_delivery/Utils/colors.dart';
import 'package:farm_flow_delivery/Utils/custom_button.dart';
import 'package:farm_flow_delivery/Utils/sized_box.dart';
import 'package:farm_flow_delivery/View/Profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'package:path_provider/path_provider.dart';

class PersonalInfo extends StatefulWidget {
  const PersonalInfo({super.key});

  @override
  State<PersonalInfo> createState() => _PersonalInfoState();
}

class _PersonalInfoState extends State<PersonalInfo> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();
  //bool editBool = false;
  DateTime? _selectedDate;
  final ProfileImageController editProfileImage =
      Get.put(ProfileImageController());

  void _submit() {
    setState(() {
      setState(() {
        // editBool = false;
        nameValue = nameController.text;
        dateValue = datecontroller.text;
        phoneValue = phoneController.text;
        emailValue = emailController.text;
        // addressValue = addressController.text;
      });
    });
    // }
  }

  Future<File> saveFilePermanently(String imagePath) async {
    final directory = await getApplicationDocumentsDirectory();
    return File(imagePath).copy(imagePath);
  }

  void _presentDatePicker() {
    // showDatePicker is a pre-made funtion of Flutter
    showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1922),
      lastDate: DateTime.now(),
      builder: (context, child) {
        return Theme(
            data: Theme.of(context).copyWith(
              colorScheme: ColorScheme.light(
                primary: AppColors.buttoncolour,
                onPrimary: AppColors.white,
                onSurface: Colors.blueAccent,
              ),
              textButtonTheme: TextButtonThemeData(
                style: TextButton.styleFrom(
                  primary: AppColors.buttoncolour,
                ),
              ),
            ),
            child: child!);
      },
    ).then((pickedDate) {
      // Check if no date is selected
      if (pickedDate == null) {
        return;
      }
      setState(() {
        _selectedDate = pickedDate;
        datecontroller.text =
            "${_selectedDate!.day.toString()}/${_selectedDate!.month.toString().padLeft(2, '0')}/${_selectedDate!.year.toString().padLeft(2, '0')}";
      });
    });
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
                Text(
                  'Profile Photo',
                  style: TextStyle(
                      color: Color(0xff444444),
                      fontSize: 22.sp,
                      fontFamily: 'Poppins'),
                ),
                sizedBoxHeight(40.h),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    GestureDetector(
                      onTap: () {
                        editProfileImage.getImage(ImageSource.camera);
                        Get.back();
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 27.r,
                            backgroundColor: Color(0xff143C6D),
                            child: Icon(
                              Icons.camera_alt_outlined,
                              size: 30.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            'Camera',
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: Color(0xff444444),
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                    sizedBoxWidth(36.w),
                    GestureDetector(
                      onTap: () {
                        editProfileImage.getImage(ImageSource.gallery);
                        Get.back();
                      },
                      child: Column(
                        children: [
                          CircleAvatar(
                            radius: 27.r,
                            backgroundColor: Color(0xff143C6D),
                            child: Icon(
                              Icons.image_outlined,
                              size: 30.sp,
                              color: Colors.white,
                            ),
                          ),
                          SizedBox(
                            height: 6.h,
                          ),
                          Text(
                            'Gallery',
                            style: TextStyle(
                                fontSize: 13.sp,
                                color: Color(0xff444444),
                                fontFamily: 'Poppins'),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: SafeArea(
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
                    "Personal Information",
                    style: TextStyle(
                      color: Color(0XFF141414),
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
            ),
            sizedBoxHeight(40.h),
            Expanded(
              child: SingleChildScrollView(
                padding: EdgeInsets.symmetric(horizontal: 16.w),
                child: Form(
                  key: _formKey,
                  child: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Center(
                          child: Stack(
                              clipBehavior: Clip.none,
                              alignment: Alignment.center,
                              children: [
                                Obx(
                                  () => ClipOval(
                                    child: SizedBox.fromSize(
                                      size: Size.fromRadius(60.r),
                                      child: editProfileImage
                                                  .profilePicPath.value !=
                                              ''
                                          ? Image(
                                              image: FileImage(File(
                                                  editProfileImage
                                                      .profilePicPath.value)),
                                              fit: BoxFit.cover,
                                              width: 200.w,
                                              height: 200.h,
                                            )
                                          : Image.asset(
                                              'assets/images/profile.png'),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 0,
                                  right: 0,
                                  child: GestureDetector(
                                    onTap: () {
                                      builduploadprofile();
                                    },
                                    child: Material(
                                      elevation: 1,
                                      shape: CircleBorder(),
                                      child: CircleAvatar(
                                          radius: 16.5.r,
                                          backgroundColor: Color(0XFF0E5F02),
                                          child: SvgPicture.asset(
                                            "assets/images/camera-svgrepo-com.svg",
                                            width: 20.w,
                                            height: 17.h,
                                          )
                                          // Icon(
                                          //   Icons.edit_outlined,
                                          //   color: Color(0xffCCCCCC),
                                          // ),
                                          ),
                                    ),
                                  ),
                                ),
                              ]),
                        ),
                        sizedBoxHeight(31.h),
                        Text(
                          "Full Name",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.sp,
                              color: Color(0XFF141414)),
                        ),
                        CustomTextFormField(
                          textEditingController: nameController,
                          hintText: 'Enter Full Name',
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(20),
                            FilteringTextInputFormatter.allow(
                                RegExp('[a-zA-Z ]')),
                          ],
                          validatorText: 'Please enter full name',
                          texttype: TextInputType.text,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter full name";
                            }
                            return null;
                          },
                        ),
                        sizedBoxHeight(21.h),
                        Text(
                          "Date Of Birth",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.sp,
                              color: Color(0XFF141414)),
                        ),
                        Personaldatepicker(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please Select Date of Birth";
                            }
                            return null;
                          },
                          datecontroller: datecontroller,
                          ontap: () => _presentDatePicker(),
                        ),
                        sizedBoxHeight(21.h),
                        Text(
                          "Contact Number",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.sp,
                              color: Color(0XFF141414)),
                        ),
                        CustomTextFormField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(10),
                            FilteringTextInputFormatter.allow(RegExp('[0-9]')),
                          ],
                          textEditingController: phoneController,
                          hintText: 'Enter Contact Number',
                          texttype: TextInputType.number,
                          validatorText: 'Please enter contact number',
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return "Please enter contact number";
                            }
                            return null;
                          },
                        ),
                        sizedBoxHeight(21.h),
                        Text(
                          "Email Address",
                          style: TextStyle(
                              fontFamily: 'Poppins',
                              fontSize: 18.sp,
                              color: Color(0XFF141414)),
                        ),
                        CustomTextFormField(
                          inputFormatters: [
                            LengthLimitingTextInputFormatter(50),
                          ],
                          textEditingController: emailController,
                          hintText: 'Enter Email Address',
                          validatorText: 'Please enter email address',
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                !value.contains('@') ||
                                !value.contains('.')) {
                              return "Please enter valid email address";
                            }
                            return null;
                          },
                        ),
                        sizedBoxHeight(38.h),
                        CustomButton(
                            text: "Save",
                            onTap: () {
                              final isValid = _formKey.currentState?.validate();
                              if (isValid!) {
                                _submit();
                                Get.toNamed("/profile");
                              } else {
                                Flushbar(
                                  message: "Please fill all fields",
                                  duration: const Duration(seconds: 3),
                                ).show(context);
                              }
                            }),
                        sizedBoxHeight(79.h),
                      ],
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class ProfileImageController extends GetxController {
  RxString profilePicPath = "".obs;

  void getImage(ImageSource imgSource) async {
    final ImagePicker picker = ImagePicker();
    print('profilePicPath $profilePicPath');
    final XFile? pickedImg = await picker.pickImage(source: imgSource);
    if (pickedImg != null) {
      final CroppedFile? croppedImg = await ImageCropper().cropImage(
          sourcePath: pickedImg.path,
          aspectRatio: const CropAspectRatio(ratioX: 1, ratioY: 1),
          compressFormat: ImageCompressFormat.jpg,
          maxHeight: 512,
          maxWidth: 512,
          compressQuality: 100,
          cropStyle: CropStyle.circle,
          aspectRatioPresets: [
            CropAspectRatioPreset.square,
          ],
          uiSettings: [
            AndroidUiSettings(
              toolbarTitle: "Crop Image",
              toolbarColor: Get.theme.appBarTheme.backgroundColor,
              // toolbarWidgetColor: ColorConstants.kWhite,
              backgroundColor: Colors.black,
              activeControlsWidgetColor: Colors.red,
              // initAspectRatio: CropAspectRatioPreset.original,
              cropFrameColor: Colors.white,
              lockAspectRatio: false,
            ),
            IOSUiSettings(
              title: 'Crop Image',
            ),
          ]);
      if (croppedImg != null) {
        // profilPic = croppedImg.path;
        profilePicPath.value = croppedImg.path;
        // Get.back();
      }
    }
  }
}

class Personaldatepicker extends StatelessWidget {
  Personaldatepicker({
    Key? key,
    required this.datecontroller,
    required this.ontap,
    this.validator,
    this.inputFormatters,
    this.textEditingController,
    this.leadingIcon,
    this.onTap,
    this.eyeIcon = false,
    this.onChanged,
    this.suffixIcon,
    this.readonly = false,
    this.isInputPassword = false,
    this.outlineColor = const Color(0xFFFFB600),
    // this.keyboardType,
    this.suffixIconConstraints,
    this.texttype,
  }) : super(key: key);

  final TextEditingController datecontroller;
  final GestureTapCallback ontap;
  final dynamic validator;
  final TextEditingController? textEditingController;
  final Widget? leadingIcon;
  final bool eyeIcon;
  final Widget? suffixIcon;
  final bool isInputPassword;
  void Function(String)? onChanged;
  void Function()? onTap;
  final bool readonly;
  final dynamic inputFormatters;
  final Color outlineColor;
  final BoxConstraints? suffixIconConstraints;

  final TextInputType? texttype;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      textAlignVertical: TextAlignVertical.center,
      style: TextStyle(
        fontSize: 16.sp,
      ),
      validator: validator,
      autovalidateMode: AutovalidateMode.onUserInteraction,
      controller: datecontroller,
      onTap: (() => ontap()),
      readOnly: true,
      cursorColor: Color(0xFF3B3F43),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
          errorStyle: TextStyle(fontSize: 14.sp),
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
          suffixIcon: Padding(
            padding: EdgeInsets.only(right: 10.w),
            child: CircleAvatar(
              radius: 20.h,
              backgroundColor: AppColors.white,
              child: Center(
                child: Padding(
                  padding: EdgeInsets.only(right: 8.w),
                  child: IconButton(
                    icon: const Icon(
                      Icons.date_range,
                      color: Color(0xFF0E5F02),
                    ),
                    onPressed: () {
                      ontap();
                    },
                  ),
                ),
              ),
            ),
          ),
          hintStyle: TextStyle(
              fontSize: 16.sp,
              fontWeight: FontWeight.w400,
              color: Get.isDarkMode
                  ? Colors.white
                  : Color(0xFF4D4D4D).withOpacity(0.3)),
          hintText: "Select Date"),
    );
  }
}
