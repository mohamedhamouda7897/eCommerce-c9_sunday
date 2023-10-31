import 'package:dartz/dartz.dart';
import 'package:e_commerce_c9_sunday/core/utils/app_colors.dart';
import 'package:e_commerce_c9_sunday/core/utils/app_images.dart';
import 'package:e_commerce_c9_sunday/core/utils/app_strings.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginScreen extends StatelessWidget {
  // const LoginScreen({super.key});
  var EmailController = TextEditingController();
  var PasswordController = TextEditingController();
  static var logkey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: logkey,
      child: Scaffold(
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 97.w, right: 96.r, top: 91.h),
                child: Image.asset(LoginAndSignUpImages.RouteImage),
              ),
              SizedBox(
                height: 86.9.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 16.w, right: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(LoginAndSignupStrings.WelcomeBack,
                        style: Theme.of(context).textTheme.bodyLarge),
                    SizedBox(
                      height: 8.h,
                    ),
                    Text(LoginAndSignupStrings.PleaseSignIn,
                        style: Theme.of(context).textTheme.bodySmall),
                    SizedBox(
                      height: 40.h,
                    ),
                    Text(LoginAndSignupStrings.Username,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                            )),
                    SizedBox(
                      height: 24.h,
                    ),
                    TextFormField(
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return LoginAndSignupStrings.errorloginuser;
                          }
                          return null;
                        },
                        decoration: InputDecoration(
                          // label: Text('enter your name' , style: GoogleFonts.poppins(fontWeight: FontWeight.w300),),
                          hintText: LoginAndSignupStrings.entername,
                          hintStyle:
                              Theme.of(context).textTheme.bodyMedium?.copyWith(
                                    fontWeight: FontWeight.w100,
                                    color: LoginAndSignUpColours.blackfont,
                                  ),
                          filled: true,
                          fillColor: Colors.white,
                          focusColor: Colors.transparent,
                          errorBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          focusedErrorBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          enabledBorder: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(15)),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                          focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(15),
                              borderSide:
                                  BorderSide(color: Colors.transparent)),
                        )),
                    SizedBox(
                      height: 32.h,
                    ),
                    Text(LoginAndSignupStrings.Password,
                        style: Theme.of(context).textTheme.bodyMedium?.copyWith(
                              fontWeight: FontWeight.w500,
                            )),
                    SizedBox(
                      height: 24.h,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextFormField(
                            obscureText: true,
                            validator: (value) {
                              if (value == null || value.isEmpty) {
                                return LoginAndSignupStrings.errorloginpassword;
                              }
                              return null;
                            },
                            decoration: InputDecoration(
                                hintText: LoginAndSignupStrings.enterpassword,
                                hintStyle: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(
                                        fontWeight: FontWeight.w300,
                                        color: LoginAndSignUpColours.blackfont),
                                filled: true,
                                fillColor: Colors.white,
                                focusColor: Colors.transparent,
                                errorBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                focusedErrorBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                enabledBorder: OutlineInputBorder(
                                    borderRadius:
                                        BorderRadius.all(Radius.circular(15)),
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                focusedBorder: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(15),
                                    borderSide:
                                        BorderSide(color: Colors.transparent)),
                                suffixIcon: Padding(
                                  padding: EdgeInsets.only(
                                      right: 16.w, top: 20.h, bottom: 20.h),
                                  child: ImageIcon(
                                    AssetImage(LoginAndSignUpImages.HideImage),
                                    color: Colors.grey,
                                  ),
                                ))),
                        SizedBox(
                          height: 16.h,
                        ),
                        InkWell(
                            onTap: () {
                              // Write The Function Here
                            },
                            child: Text(LoginAndSignupStrings.forgotPass,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyMedium
                                    ?.copyWith(fontWeight: FontWeight.w400)))
                      ],
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 56.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 17.w, right: 15.w),
                child: ElevatedButton(
                    onPressed: () {
                      // Write The Function Here
                      if (logkey.currentState!.validate()) {
                        return null;
                      }
                    },
                    child: Padding(
                      padding: EdgeInsets.only(bottom: 23.h, top: 23.h),
                      child: Text(
                        LoginAndSignupStrings.Login,
                        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
                            color: LoginAndSignUpColours.BackGround,
                            fontSize: 20.sp),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(15)))),
              ),
              Padding(
                padding: EdgeInsets.only(top: 32.h),
                child: Center(
                    child: InkWell(
                        onTap: () {
                          // Write The Function Here
                        },
                        child: Text(LoginAndSignupStrings.DontHaveAcc,
                            style: Theme.of(context).textTheme.bodyMedium))),
              )
            ],
          ),
        ),
      ),
    );
  }
}
