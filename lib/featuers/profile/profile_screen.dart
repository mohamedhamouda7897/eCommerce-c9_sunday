import 'package:e_commerce_c9_sunday/core/utils/app_images.dart';
import 'package:e_commerce_c9_sunday/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../core/utils/components.dart';

class ProfileScreen extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final mobileController = TextEditingController();
  final addressController = TextEditingController();

  ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 16.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Align(
              alignment: Alignment.topLeft,
              child: Image.asset(AppImages.routeName)),
          SizedBox(
            height: 24.h,
          ),
          const CostumeText("${AppStrings.welcome} Mohamed"),
          SizedBox(
            height: 66.h,
          ),
          const CostumeText(AppStrings.yourFullName),
          SizedBox(
            height: 16.h,
          ),
          CostumeTextFormField(
            conrtoller: nameController,
            hintText: AppStrings.yourFullName,
            suffixIcon: const Icon(Icons.edit),
          ),
          SizedBox(
            height: 16.h,
          ),
          const CostumeText(AppStrings.yourEmail),
          SizedBox(
            height: 16.h,
          ),
          CostumeTextFormField(
            conrtoller: emailController,
            hintText: AppStrings.yourEmail,
            suffixIcon: const Icon(Icons.edit),
          ),
          SizedBox(
            height: 16.h,
          ),
          const CostumeText(AppStrings.yourPassword),
          SizedBox(
            height: 16.h,
          ),
          CostumeTextFormField(
            conrtoller: passwordController,
            hintText: AppStrings.yourPassword,
            suffixIcon: const Icon(Icons.edit),
          ),
          SizedBox(
            height: 16.h,
          ),
          const CostumeText(AppStrings.yourMobileNumber),
          SizedBox(
            height: 16.h,
          ),
          CostumeTextFormField(
            conrtoller: mobileController,
            hintText: AppStrings.yourMobileNumber,
            suffixIcon: const Icon(Icons.edit),
          ),
          SizedBox(
            height: 16.h,
          ),
          const CostumeText(AppStrings.yourAddress),
          SizedBox(
            height: 16.h,
          ),
          CostumeTextFormField(
            conrtoller: addressController,
            hintText: AppStrings.yourAddress,
            suffixIcon: const Icon(Icons.edit),
          ),
        ],
      ),
    );
  }
}
